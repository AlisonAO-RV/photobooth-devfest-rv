if (typeof firebase === "undefined")
  throw new Error(
    "hosting/init-error: Firebase SDK not detected. You must include it before /__/firebase/init.js"
  );
var firebaseConfig = {
  apiKey: "AIzaSyApox8IPtWoKXonjE2sgpxdN63tgmxdZeM",
  authDomain: "io-photobooth-devfest-rv.firebaseapp.com",
  projectId: "io-photobooth-devfest-rv",
  storageBucket: "io-photobooth-devfest-rv.appspot.com",
  messagingSenderId: "12542196475",
  appId: "1:12542196475:web:8ce2d002f0bad10fcace5e",
  measurementId: "G-VPY4XR0348",
};
if (firebaseConfig) {
  firebase.initializeApp(firebaseConfig);

  var firebaseEmulators = undefined;
  if (firebaseEmulators) {
    console.log("Automatically connecting Firebase SDKs to running emulators:");
    Object.keys(firebaseEmulators).forEach(function (key) {
      console.log(
        "\t" +
          key +
          ": http://" +
          firebaseEmulators[key].host +
          ":" +
          firebaseEmulators[key].port
      );
    });

    if (firebaseEmulators.database && typeof firebase.database === "function") {
      firebase
        .database()
        .useEmulator(
          firebaseEmulators.database.host,
          firebaseEmulators.database.port
        );
    }

    if (
      firebaseEmulators.firestore &&
      typeof firebase.firestore === "function"
    ) {
      firebase
        .firestore()
        .useEmulator(
          firebaseEmulators.firestore.host,
          firebaseEmulators.firestore.port
        );
    }

    if (
      firebaseEmulators.functions &&
      typeof firebase.functions === "function"
    ) {
      firebase
        .functions()
        .useEmulator(
          firebaseEmulators.functions.host,
          firebaseEmulators.functions.port
        );
    }

    if (firebaseEmulators.auth && typeof firebase.auth === "function") {
      firebase
        .auth()
        .useEmulator(
          "http://" +
            firebaseEmulators.auth.host +
            ":" +
            firebaseEmulators.auth.port
        );
    }
  } else {
    console.log(
      "To automatically connect the Firebase SDKs to running emulators, replace '/__/firebase/init.js' with '/__/firebase/init.js?useEmulator=true' in your index.html"
    );
  }
}
