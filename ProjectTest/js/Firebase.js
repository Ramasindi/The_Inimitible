//FIREBASE
//SOCIAL LOGIN IS FOR STUDENTS
//ADMIN AND TUTORS SHOULD REGISTER WITH EMAIL AND PASSWORD
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase.analytics();
const firestore = firebase.firestore();
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
//Mind Academy Students can use email, google and Facebook to login
//Mind Academy Tutotors and Admins will ONLY use email to REGISTEER and then can use google and facebook to login. 

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
            //Send email verification
            firebase.auth().currentUser.sendEmailVerification();

            document.getElementById("signUpSpinner").style.display = "none";
            alertToast("success","Signed in successfully");
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
//alerting users that they are signed in
function alertToast(iconType,message){
    const Toast = Swal.mixin({
        toast: true,
        position: 'bottom',
        showConfirmButton: false,
        timerProgressBar: true,
        timer: 3000,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })

    Toast.fire({
        icon: iconType,
        title: message
    })
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
            alertToast("success","Signed in successfully");
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
                writeNewUser(result, "STUDENT");
                if (page == "Login.aspx") {
                    document.getElementById("googleLogSpinner").style.display = "none";
                } else {
                    document.getElementById("googleSignSpinner").style.display = "none";
                }
               
            } else {
                document.getElementById("googleLogSpinner").style.display = "none";
                //HANDLE TO DETERMINE ROLE
                sendCurrentUser(result.user.uid, "Home.aspx", "STUDENT", result.user.email);               
            }
            alertToast("success","Signed in successfully");
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
                writeNewUser(result, "STUDENT");
                if (page == "Login.aspx") {
                    document.getElementById("facebookLogSpinner").style.display = "none";
                } else {
                    document.getElementById("facebookSignSpinner").style.display = "none";
                }                
            } else {
                document.getElementById("facebookLogSpinner").style.display = "none";
                //HANDLE TO DETERMINE ROLE
                sendCurrentUser(result.user.uid, "Home.aspx", "STUDENT", result.user.email);
                
            }
            alertToast("success","Signed in successfuly");
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
                role = snapshot.val().role.toUpperCase();
                alreadyLogged(uid, snapshot.val().role.toUpperCase(), user.email);
            } else {
                tutorRef.on('value', function (snapshot) {
                    if (snapshot.exists()) {
                        role = snapshot.val().role.toUpperCase();
                        alreadyLogged(uid, snapshot.val().role.toUpperCase(), user.email);
                    } else {
                        adminRef.on('value', function (snapshot) {
                            if (snapshot.exists()) {
                                role = snapshot.val().role.toUpperCase();
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
        setTimeout(function () {
            if (!currentUser.emailVerified) {
                Swal.fire({
                    title: 'Your Email address is not Verified!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Resend verification Link',
                    showClass: {
                        popup: 'animate__animated animate__fadeInDown'
                    },
                    hideClass: {
                        popup: 'animate__animated animate__fadeOutUp'
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        //send email verification
                        firebase.auth().currentUser.sendEmailVerification()
                        Swal.fire(
                            'Sent!',
                            'A verification link has been sent to ' + user.email,
                            'success'
                        )
                    }
                })
            }
        }, 7000);      
        if (currentUser.displayName !== null) {
            document.getElementById("myAccount").innerHTML = currentUser.displayName;
        } else {
            document.getElementById("myAccount").innerHTML = user.email;
        }
        console.log(currentUser);
    } else {
        console.log("No User");    
        clearSession();
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
            NullifyUID();
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
                window.location = "Home.aspx";
            },
            error: function (request, message, error) {
                console.log(request + message + error);
            }
        });
    } catch (e) {
        alert(e);
    }
}
//If user cleared cache or cookies while logged in
function clearSession() {
    try {
        $.ajax({
            type: "POST",
            url: "MailHandler.ashx",
            cache: false,
            data: "LOGGEDOUT",
            dataType: "text",
            success: function () {
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
                console.log(UID + ROLE + EMAIL);
                if (getParam("plan") !== null) {
                    console.log(getParam("plan"));
                    window.location.href = "AboutPlan.aspx?plan=" + getParam("plan");
                } else {
                    window.location.href = page;
                }
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

//Get URL param
function getParam(param) {
    return new URLSearchParams(window.location.search).get(param);
}