/* DESCRIPTION: CUSTOM JS FILE */
 
/* NAVIGATION*/
// COLLAPSE THE NAVBAR BY ADDING THE TOP-NAV-COLLAPSE CLASS
window.onscroll = function () {
	scrollFunction();
	scrollFunctionBTT(); // back to top button
};

function scrollFunction() {
	let intViewportWidth = window.innerWidth;
	if (
		document.body.scrollTop > 30 ||
		(document.documentElement.scrollTop > 30) & (intViewportWidth > 991)
	) {
		document.getElementById("navbar").classList.add("top-nav-collapse");
	} else if (
		document.body.scrollTop < 30 ||
		(document.documentElement.scrollTop < 30) & (intViewportWidth > 991)
	) {
		document.getElementById("navbar").classList.remove("top-nav-collapse");
	}
}

// NAVBAR ON MOBILE
let elements = document.querySelectorAll(".nav-link:not(.dropdown-toggle)");

for (let i = 0; i < elements.length; i++) {
    elements[i].addEventListener("click", () => {
        document.querySelector(".offcanvas-collapse").classList.toggle("open");
    });
}

document.querySelector(".navbar-toggler").addEventListener("click", () => {
  document.querySelector(".offcanvas-collapse").classList.toggle("open");
});

// HOVER ON DESKTOP
function toggleDropdown(e) {
    const _d = e.target.closest(".dropdown");
    let _m = document.querySelector(".dropdown-menu", _d);

    setTimeout(
        function () {
        const shouldOpen = _d.matches(":hover");
        _m.classList.toggle("show", shouldOpen);
        _d.classList.toggle("show", shouldOpen);

        _d.setAttribute("aria-expanded", shouldOpen);
        },
        e.type === "mouseleave" ? 300 : 0
    );
}

// ON HOVER
const dropdownCheck = document.querySelector(".dropdown");

if (dropdownCheck !== null) {
    document
        .querySelector(".dropdown")
        .addEventListener("mouseleave", toggleDropdown);
    document
        .querySelector(".dropdown")
        .addEventListener("mouseover", toggleDropdown);

    // ON CLICK
    document.querySelector(".dropdown").addEventListener("click", (e) => {
        const _d = e.target.closest(".dropdown");
        let _m = document.querySelector(".dropdown-menu", _d);
        if (_d.classList.contains("show")) {
            _m.classList.remove("show");
            _d.classList.remove("show");
        } else {
            _m.classList.add("show");
            _d.classList.add("show");
        }
    });
}

/* CARD SLIDER - SWIPER */
var cardSlider = new Swiper(".card-slider", {
    autoplay: {
        delay: 4000,
        disableOnInteraction: false,
    },
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    slidesPerView: 3,
    spaceBetween: 70,
    breakpoints: {
        // when window is <= 767px
        767: {
        slidesPerView: 1,
        },
        // when window is <= 991px
        991: {
        slidesPerView: 2,
        spaceBetween: 40,
        },
    },
});

/* BACK TO TOP BUTTON */
// GET THE BUTTON
myButton = document.getElementById("myBtn");

// WHEN THE USER SCROLLS DOWN 20PX FROM THE TOP OF THE DOCUMENT, SHOW THE BUTTON
function scrollFunctionBTT() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        myButton.style.display = "block";
    } else {
        myButton.style.display = "none";
    }
}

// WHEN THE USER CLICKS ON THE BUTTON, SCROLL TO THE TOP OF THE DOCUMENT
function topFunction() {
    document.body.scrollTop = 0; // for Safari
    document.documentElement.scrollTop = 0; // for Chrome, Firefox, IE and Opera
}

// AOS ANIMATION ON SCROLL
AOS.init({
    duration: 1000,
    easing: "ease",
    once: true, // whether animation should happen only once - while scrolling down
});

//FIREBASE

// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase.analytics();
//end Config
var currentUser = {};
var provider = new firebase.auth.GoogleAuthProvider();
//Button for Registering new-users
$("#signUpNewUser").click(function () {
    var email = $("#NewEmail").val();
    var password = $("#NewPassword").val();
    var reEnterpassword = $("#ReEnterPassword").val();
    if (password !== reEnterpassword) {
        alert("Passwords do not match");
        console.log("Password 1: " + password + " Password 2: " + reEnterpassword);
    } else {
        console.log("New user = " + email + " " + password);
        CreateNewUser(email, password);
        window.location.href = "Home.aspx"
    }

    
});
//Button for signing/login existing user
//button listerners
$("#signInUser").click(function () {
    var email = $("#email").val();
    var password = $("#password").val();
    console.log("Existing user =" + email + " " + password);
    SignIn(email, password);
    window.location.href = "Home.aspx"
});
//On Register
$("#googleSignIn").click(function () {
    console.log("Google Sign in");
    SignUserWithGoogle();
    

});
$("#facebooksignin").click(function () {
    console.log("Facebook sign in");
    signWithFB();

});
//On Login
$("#googleLogin").click(function () {
    console.log("Google Sign in");
    SignUserWithGoogle();
    
});
$("#facebooklogin").click(function () {
    console.log("Facebook login");
    signWithFB();

});
//log user out
//On Login
$("#logout").click(function () {
    SignOut()
    console.log("logged out");

});

//Functions with Firebase
//This function is for creating/Registering new users
function CreateNewUser(email, password) {
    firebase.default.auth().createUserWithEmailAndPassword(email, password).catch(function (error) {
        // Handle Errors here.
        var errorCode = error.code;
        var errorMessage = error.message;
        console.log(errorMessage);
        alert(errorMessage);
    });
}
//This function is for signing in existing users
function SignIn(email, password) {
    firebase.auth().signInWithEmailAndPassword(email, password).catch(function (error) {
        // Handle Errors here.
        var errorCode = error.code;
        var errorMessage = error.message;
        console.log(errorMessage);
        alert(errorMessage);
    });
}
//Sign in user with google account popup
function SignUserWithGoogle() {
    firebase.auth()
        .signInWithPopup(provider)
        .then((result) => {
            /** @type {firebase.auth.OAuthCredential} */
            var credential = result.credential;

            // This gives you a Google Access Token. You can use it to access the Google API.
            var token = credential.accessToken;
            // The signed-in user info.
            var user = result.user;
            window.location.href = "Home.aspx";
            console.log(user);
            // ...
        }).catch((error) => {
            // Handle Errors here.
            var errorCode = error.code;
            var errorMessage = error.message;
            console.log(errorMessage);
            // The email of the user's account used.
            var email = error.email;
            // The firebase.auth.AuthCredential type that was used.
            var credential = error.credential;
            // ...
        });
}

//login user with facebook
var fbprovider = new firebase.auth.FacebookAuthProvider();
function signWithFB()
{
    firebase
        .auth()
        .signInWithPopup(fbprovider)
        .then((result) => {
           
            var credential = result.credential;

            // The signed-in user info.
            var user = result.user;
            window.location.href = "Home.aspx";
            // This gives you a Facebook Access Token. You can use it to access the Facebook API.
            var accessToken = credential.accessToken;
            console.log(user);
            console.log(accessToken);
            // ...
        })
        .catch((error) => {
            // Handle Errors here.
            var errorCode = error.code;
            var errorMessage = error.message;
            // The email of the user's account used.
            var email = error.email;
            // The firebase.auth.AuthCredential type that was used.
            var credential = error.credential;
            console.log(errorCode);
            console.log(credential);
            console.log(email);
            console.log(errorMessage);
            // ...
        });
}
//IF there is an active user
firebase.auth().onAuthStateChanged((user) => {
    if (user) {
        // User is signed in, see docs for a list of available properties
        // https://firebase.google.com/docs/reference/js/firebase.User
        var uid = user.uid;
        // ...
        currentUser = user;
        
        document.getElementById("myAccount").innerHTML = currentUser.displayName;
        
    } else {
        // User is signed out
        // ...
    }
});

//logging user out
function SignOut() {
    firebase.auth().signOut();//.then(function() {

    // Sign-out successful.
    //console.log("User has signed out");
    //}).catch(function(error) {
    // An error happened.
    //console.log("An error occured signing user out");
    //});
}