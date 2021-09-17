//FIREBASE
//SOCIAL LOGIN IS FOR STUDENTS
//ADMIN AND TUTORS SHOULD REGISTER WITH EMAIL AND PASSWORD
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase.analytics();

//Storage reference
var storageRef = firebase.storage().ref();
var imagesRef = storageRef.child('images');

var database = firebase.database();
var currentUser = {};
var provider = new firebase.auth.GoogleAuthProvider();
//Button for Registering new-users
$("#signUpNewUser").on("click", function (e) {
    e.preventDefault();
    var email = $("#NewEmail").val();
    var password = $("#NewPassword").val();
    var reEnterpassword = $("#ReEnterPassword").val();
   CreateNewUser(email, password,reEnterpassword);
});
//Button for signing/login existing user
$("#signInUser").on("click", function (e) {
    e.preventDefault();
    var email = $("#email").val();
    var password = $("#password").val();
    SignIn(email, password);
});
//On Register
$("#googleSignIn").on("click",function () {
    SignUserWithGoogle("registerPage");
});
$("#facebooksignin").on("click",function () {
    signWithFB("registerPage");
});
//On Login
$("#googleLogin").on("click", function (e) {
    e.preventDefault()
    SignUserWithGoogle("Login.aspx");
});
$("#facebooklogin").on("click", function (e) {
    e.preventDefault();
    signWithFB("Login.aspx");
});
//log user out
$("#logout").on("click",function () {
    SignOut();
});

//Functions with Firebase
//This function is for creating/Registering new users
//TODO: Handle TUTOR here [TUT-Password|thalu@mindacademy.com]
//TODO: Handle ADMIN here [SUPER-Password|admin@mindacademy.com]
function CreateNewUser(email, password, reEnterpassword) {
    document.getElementById("signUpSpinner").style.display = "inline-block";
    if (email == "" || password == "" || reEnterpassword == "") {
        document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> 'Please fill empty fields'";
        document.getElementById("signUpSpinner").style.display = "none";
        return;
    } else if ((password !== reEnterpassword)) {
        document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> 'Your Passwords do not match'";
        document.getElementById("signUpSpinner").style.display = "none";
        return;
    }
    firebase.default.auth().createUserWithEmailAndPassword(email, password)
        .then((result) => {
            if (password.startsWith("TUTOR")) {
                writeNewUser(result, "TUTOR");
            } else if (password.startsWith("ADMIN")) {
                writeNewUser(result, "ADMIN");
            } else {
                writeNewUser(result,"STUDENT");
            }
            document.getElementById("signUpSpinner").style.display = "none";
        }).catch((error) => {
            // Handle Errors here
            document.getElementById("signUpSpinner").style.display = "none";
            var errorMessage = error.message;
            if (errorMessage != null || error.code != null) {
                document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
                return;
            }
        });
}
//This function is for signing in existing users
function SignIn(email, password) {
    document.getElementById("signInSpinner").style.display = "inline-block";
    firebase.auth().signInWithEmailAndPassword(email, password)
        .then((result) => {
            console.log(result.user.uid);
            if (password.startsWith("TUTOR")) {
                sendCurrentUser(result.user.uid, "Home.aspx", "TUTOR", result.user.email);
            } else if (password.startsWith("ADMIN")) {
                sendCurrentUser(result.user.uid, "Home.aspx", "ADMIN", result.user.email);
            } else {
                sendCurrentUser(result.user.uid, "Home.aspx", "STUDENT", result.user.email);
            }
            document.getElementById("signInSpinner").style.display = "none";
        }).catch((error) => {
            // Handle Errors here.
            document.getElementById("signInSpinner").style.display = "none";
            var errorMessage = error.message;
            if (errorMessage != null || error.code != null) {
                document.getElementById("loginAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";               
                return;
            }
        });
}
//Sign in user with google account popup
function SignUserWithGoogle(page) {
    if (page == "Login.aspx") {
        document.getElementById("googleLogSpinner").style.display = "inline-block";
    } else {
        document.getElementById("googleSignSpinner").style.display = "inline-block";
    }
    firebase.auth()
        .signInWithPopup(provider)
        .then((result) => {
            var credential = result.credential;
            // This gives you a Google Access Token. You can use it to access the Google API.
            var token = credential.accessToken;
            if (result.additionalUserInfo.isNewUser) {
                writeNewUser(result,ROLE);
                document.getElementById("googleSignSpinner").style.display = "none";
            } else {
                document.getElementById("googleLogSpinner").style.display = "none";
                //HANDLE TO DETERMINE ROLE
                sendCurrentUser(result.user.uid, "Home.aspx", "STUDENT", result.user.email);
            }
        }).catch((error) => {
            // Handle Errors here.    
            var errorMessage = error.message;
            if (page === "Login.aspx") {
                document.getElementById("loginAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
                document.getElementById("googleLogSpinner").style.display = "none";
            } else {
                document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
                document.getElementById("googleSignSpinner").style.display = "none";
            }
        });
}
//login user with facebook
var fbprovider = new firebase.auth.FacebookAuthProvider();
function signWithFB(page) {
    if (page == "Login.aspx") {
        document.getElementById("facebookLogSpinner").style.display = "inline-block";
    } else {
        document.getElementById("facebookSignSpinner").style.display = "inline-block";
    }
    firebase
        .auth()
        .signInWithPopup(fbprovider)
        .then((result) => {
            console.log(result)
            if (result.additionalUserInfo.isNewUser) {
                writeNewUser(result,ROLE);
                document.getElementById("facebookSignSpinner").style.display = "none";
            } else {
                document.getElementById("facebookLogSpinner").style.display = "none";
                //HANDLE TO DETERMINE ROLE
                sendCurrentUser(result.user.uid, "Home.aspx", "STUDENT", result.user.email);
                
            }
        })
        .catch((error) => {
            // Handle Errors here.
            var errorMessage = error.message;
            if (page === "Login.aspx") {
                document.getElementById("loginAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
                document.getElementById("facebookLogSpinner").style.display = "none";
            } else {
                document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
                document.getElementById("facebookSignSpinner").style.display = "none";
            }
        });
}
//IF there is an active user
firebase.auth().onAuthStateChanged((user) => {
    if (user) {
        // User is signed in, see docs for a list of available properties
        // https://firebase.google.com/docs/reference/js/firebase.User
        var uid = user.uid;
        var studentRef = firebase.database().ref('Students/' + uid);
        var tutorRef = firebase.database().ref('Tutors/' + uid);
        var adminRef = firebase.database().ref('Administrators/' + uid);
        studentRef.on('value', function (snapshot) {
            if (snapshot.exists()) {
                alreadyLogged(uid, snapshot.val().role.toUpperCase(), user.email);
            } else {
                tutorRef.on('value', function (snapshot) {
                    if (snapshot.exists()) {
                        alreadyLogged(uid, snapshot.val().role.toUpperCase(), user.email);
                    } else {
                        adminRef.on('value', function (snapshot) {
                            if (snapshot.exists()) {
                                alreadyLogged(uid, snapshot.val().role.toUpperCase(), user.email);
                            } else {
                                console.log("No data available in Admin table");
                            }
                        });
                        console.log("No data available in Tutor table");
                    }
                });
                console.log("No data available in Student table");
            }
        });

        currentUser = user;
        if (currentUser.displayName !== null) {
            document.getElementById("myAccount").innerHTML = currentUser.displayName;
        } else {
            document.getElementById("myAccount").innerHTML = user.email;
        }
        console.log(currentUser);
        document.getElementById("registerMyAcc").style.display = "none";
        document.getElementById("loginMyAcc").style.display = "none";
        document.getElementById("loginDivMyAcc").style.display = "none";
        document.getElementById("logoutDivMyAcc").style.display = "none";
    } else {
        // User is signed out, remove logout under my account dropdown
        document.getElementById("logoutMyAcc").style.display = "none";
        document.getElementById("profileMyAcc").style.display = "none";
        document.getElementById("profileDivMyAcc").style.display = "none";
        console.log("No User");
    }
});
//This function will writer new user to the dB
function writeNewUser(result,ROLE) {
    //we will use UserID as Datatbase Key to the user
    if (ROLE == "STUDENT") {
        firebase.database().ref('Students/' + result.user.uid).set({
            email: result.user.email,
            role: "Student"
        }).then(function onSuccess(res) {
            sendCurrentUser(result.user.uid, "Profile.aspx", ROLE, result.user.email);
        }).catch(function onError(err) {
            document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + err.message + "'";
        });
    } else if (ROLE == "TUTOR") {
        firebase.database().ref('Tutors/' + result.user.uid).set({
            email: result.user.email,
            role: "Tutor"
        }).then(function onSuccess(res) {
            sendCurrentUser(result.user.uid, "Profile.aspx", ROLE, result.user.email);
        }).catch(function onError(err) {
            document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + err.message + "'";
        });
    } else if (ROLE == "ADMIN") {
        firebase.database().ref('Administrators/' + result.user.uid).set({
            email: result.user.email,
            role: "Admin"
        }).then(function onSuccess(res) {
            sendCurrentUser(result.user.uid, "Profile.aspx", ROLE, result.user.email);
        }).catch(function onError(err) {
            document.getElementById("registerAlert").innerHTML = "<strong>Error!</strong> '" + err.message + "'";
        });
    }
}
//logging user out
function SignOut() {
    firebase.auth().signOut().then(function () {
        // Sign-out successful.
            NullifyUID()
            window.location = "Home.aspx";
            console.log("User has signed out");
    }).catch(function (error) {
        // An error happened.
        console.log("An error occured signing user out");
    });
}

//already logged in user
function alreadyLogged(UID, ROLE, EMAIL) {
    if (ROLE !== "STUDENT") {
        ROLE += "  ";
    }
    try {
        $.ajax({
            type: "POST",
            url: "MailHandler.ashx",
            cache: false,
            data: UID+ROLE+EMAIL,
            dataType: "text",
            success: function (UID,ROLE,EMAIL) {
                console.log(UID+ROLE+EMAIL);
            },
            error: function (request, message, error) {
                console.log(request + message + error);
            }
        });
    } catch (e) {
        alert(e);
    }
}

//Closing session
function NullifyUID() {
    try {
        $.ajax({
            type: "POST",
            url: "MailHandler.ashx",
            cache: false,
            data: "LOGGEDOUT",
            dataType: "text",
            success: function () {
                console.log("STATE DESTROYED");
            },
            error: function (request, message, error) {
                console.log(request + message + error);
            }
        });
    } catch (e) {
        alert(e);
    }
}

function sendCurrentUser(UID, page, ROLE, EMAIL) {
    if (ROLE !== "STUDENT") {
        ROLE += "  ";
    }
    try {
        $.ajax({
            type: "POST",
            url: "MailHandler.ashx",
            cache: false,
            data: UID+ROLE+EMAIL,
            dataType: "text",
            success: function (UID,ROLE,EMAIL) {
                console.log(UID+ROLE+EMAIL);
                window.location.href = page;
            },
            error: function (request, message, error) {
                console.log(request + message + error);
            }
        });
    } catch (e) {
        alert(e);
    }

}

//Forgot password
$("#resetEmail").on("click", function (e) {
    e.preventDefault();
    var email = $("#resetemail").val();
    document.getElementById("resetSpinner").style.display = "inline-block";
    resetPassword(email);
});

function resetPassword(resetEmail) {
    firebase.auth().sendPasswordResetEmail(resetEmail).then(function (response) {
        // Email sent.
        document.getElementById("ResetAlert").innerHTML = "<strong>Info!</strong> A reset password link has been sent to <b>" +resetEmail+"</b>";
        document.getElementById("resetSpinner").style.display = "none";
    }).catch(function (error) {
        // An error happened.
        var errorMessage = error.message;
        document.getElementById("ResetAlert").innerHTML = "<strong>Error!</strong> '" + errorMessage + "'";
        document.getElementById("resetSpinner").style.display = "none";
    });
}