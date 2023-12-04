importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");


const firebaseConfig = {
    apiKey: "AIzaSyD9k_6i94Hapz_MS1eg1xOSB97Nk8Nivgc",
    authDomain: "flutterweb-968c2.firebaseapp.com",
    databaseURL: "https://flutterweb-968c2-default-rtdb.firebaseio.com",
    projectId: "flutterweb-968c2",
    storageBucket: "flutterweb-968c2.appspot.com",
    messagingSenderId: "225378996225",
    appId: "1:225378996225:web:53511b8f54470d6a953000",
    measurementId: "G-2WNH4Q5C97"
  };

firebase.initializeApp(firebaseConfig);

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});