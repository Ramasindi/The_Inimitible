
//const firebaseConfig = {
//    apiKey: "AIzaSyC3czO5VVHuXuAjKprn9ETUWDBF5h7e05I",
//    authDomain: "mind-academy-8357a.firebaseapp.com",
//    projectId: "mind-academy-8357a",
//    databaseURL: "https://mind-academy-8357a-default-rtdb.firebaseio.com",
//    storageBucket: "mind-academy-8357a.appspot.com",
//    messagingSenderId: "690791753845",
//    appId: "1:690791753845:web:ef60ccb88a110c8d4c703c",
//    measurementId: "G-FS70C0B339"
//};

//if (!firebase.apps.length) {
 // firebase.initializeApp(firebaseConfig);
//}
//const firestore = firebase.firestore();

//const servers = {
		  			   
//iceServers: [
//{
//'url': 'turns:jb-turn1.xirsys.com:443?transport=tcp',
//'credential': 'f316cf6e-1bf9-11ec-a8af-0242ac120004',
//'username': 'GwfGIGsnEwNgr3gORkuxQ50CXlvYcOH-Kqsrrkkm5frDDL-TT1UkuGZRACU_A9LAAAAAAGFLt1hPbGl2ZXI='
//}    
//,//{
 //     urls: ['stun:stun1.l.google.com:19302', 'stun:stun2.l.google.com:19302'],
  //  },
//],
//};
      let pc = null;
	  const getIceServers =() => {
	  	  let username = 'Rowan';
		  let password = 'e7a45464-1d3c-11ec-bf17-0242ac130003';
		  let headers = new Headers();
		  headers.append('Content-Type', 'text/json');
		  headers.set('Authorization', 'Basic ' + btoa(username + ":" + password));
		return new Promise((resolve, reject) => (
		
			fetch("https://global.xirsys.net/_turn/MindAcademy", {
			  body: "format=urls&expire=8000",
			  headers: headers,
			  method: "PUT"
			}).then(response => response.json())
			  .then(json => resolve(json))
			  .catch(err => reject(err))
			 ))	
	  }
	  async function getData(){
		const data = await getIceServers();
		pc = new RTCPeerConnection(data.v);
	  }
getData();
// Global State
//const pc = new RTCPeerConnection(servers);
let localStream = null;
let remoteStream = null;
let CId = null;
// HTML elements
const webcamButton = document.getElementById('webcamButton');
const webcamVideo = document.getElementById('webcamVideo');
webcamVideo.muted = true;
const callButton = document.getElementById('callButton');
const callInput = document.getElementById('callInput');
const answerButton = document.getElementById('answerButton');
const remoteVideo = document.getElementById('remoteVideo');
const hangupButton = document.getElementById('hangupButton');

// 1. Setup media sources

webcamButton.onclick = async () => {
  localStream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
  remoteStream = new MediaStream();

  // Push tracks from local stream to peer connection
  localStream.getTracks().forEach((track) => {
    pc.addTrack(track, localStream);
  });

  // Pull tracks from remote stream, add to video stream
  pc.ontrack = (event) => {
    event.streams[0].getTracks().forEach((track) => {
      remoteStream.addTrack(track);
    });
  };

  webcamVideo.srcObject = localStream;
  remoteVideo.srcObject = remoteStream;

  callButton.disabled = false;
  answerButton.disabled = false;
  webcamButton.disabled = true;
};

// 2. Create an offer
callButton.onclick = async () => {
  // Reference Firestore collections for signaling
  const callDoc = firestore.collection('calls').doc();
  const offerCandidates = callDoc.collection('offerCandidates');
  const answerCandidates = callDoc.collection('answerCandidates');

  callInput.value = callDoc.id;
  CId = callDoc.id;
  sendEmail();
  // Get candidates for caller, save to db
  pc.onicecandidate = (event) => {
    event.candidate && offerCandidates.add(event.candidate.toJSON());
  };

  // Create offer
  const offerDescription = await pc.createOffer();
  await pc.setLocalDescription(offerDescription);
  hangupButton.disabled = false;
  const offer = {
    sdp: offerDescription.sdp,
    type: offerDescription.type,
  };

  await callDoc.set({ offer });

  // Listen for remote answer
  callDoc.onSnapshot((snapshot) => {
    const data = snapshot.data();
    if (!pc.currentRemoteDescription && data?.answer) {
      const answerDescription = new RTCSessionDescription(data.answer);
      pc.setRemoteDescription(answerDescription);
    }
  });

  // When answered, add candidate to peer connection
  answerCandidates.onSnapshot((snapshot) => {
    snapshot.docChanges().forEach((change) => {
      if (change.type === 'added') {
        const candidate = new RTCIceCandidate(change.doc.data());
        pc.addIceCandidate(candidate);
      }
    });
  });

  hangupButton.disabled = false;
};

// 3. Answer the call with the unique ID
answerButton.onclick = async () => {
  const callId = callInput.value;
  const callDoc = firestore.collection('calls').doc(callId);
  const answerCandidates = callDoc.collection('answerCandidates');
  const offerCandidates = callDoc.collection('offerCandidates');

  pc.onicecandidate = (event) => {
    event.candidate && answerCandidates.add(event.candidate.toJSON());
  };

  const callData = (await callDoc.get()).data();

  const offerDescription = callData.offer;
  await pc.setRemoteDescription(new RTCSessionDescription(offerDescription));

  const answerDescription = await pc.createAnswer();
  await pc.setLocalDescription(answerDescription);

  const answer = {
    type: answerDescription.type,
    sdp: answerDescription.sdp,
  };

  await callDoc.update({ answer });

  offerCandidates.onSnapshot((snapshot) => {
    snapshot.docChanges().forEach((change) => {
      console.log(change);
      if (change.type === 'added') {
        let data = change.doc.data();
        pc.addIceCandidate(new RTCIceCandidate(data));
      }
    });
  });
//4. Hangup
hangupButton.disabled = false;
};
hangupButton.onclick = async () => {
const loctracks = document.querySelector('#webcamVideo').srcObject.getTracks();
loctracks.forEach(track => {
    track.stop();
  });
if (remoteStream) {
    remoteStream.getTracks().forEach(track => track.stop());
  }
  if (pc) {
    pc.close();
  }

  if (CId) {
    const db = firebase.firestore();
    const roomRef = db.collection('calls').doc(CId);
    const calleeCandidates = await roomRef.collection('anserCandidates').get();
    calleeCandidates.forEach(async candidate => {
      await candidate.delete();
    });
    const callerCandidates = await roomRef.collection('offerCandidates').get();
    callerCandidates.forEach(async candidate => {
      await candidate.delete();
    });
    await roomRef.delete();
  }
webcamButton.disabled = false;
hangupButton.disabled = true;
callInput.value = "";
document.location.reload(true);
};
//5 Send UID
