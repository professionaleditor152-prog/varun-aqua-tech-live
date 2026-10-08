/**
 * VARUN AQUA TECH - Firebase Configuration & Initialization
 * Project: varun-aqua-tech
 * Cloud Firestore Collection: products
 * 
 * NOTE: This file uses the Firebase Web Client SDK with public project identifiers.
 * No service account private keys or administrative credentials are exposed here.
 * Security is enforced on Cloud Firestore via Firebase Authentication and Security Rules.
 */

const firebaseConfig = {
  apiKey: "AIzaSyAPLS2IK1G-trRcVgxO6k4RYwrv_LLetLk",
  authDomain: "varun-aqua-tech.firebaseapp.com",
  projectId: "varun-aqua-tech",
  storageBucket: "varun-aqua-tech.firebasestorage.app",
  messagingSenderId: "932490814432",
  appId: "1:932490814432:web:6360d663e2d5e9b9b3c185"
};

window.firebaseConfig = firebaseConfig;

// Initialize Firebase if compat SDK is loaded
if (typeof firebase !== "undefined") {
  try {
    if (!firebase.apps.length) {
      firebase.initializeApp(firebaseConfig);
    }
    window.db = firebase.firestore();
    window.auth = firebase.auth();
    console.log("Firebase initialized successfully for VARUN AQUA TECH");
  } catch (err) {
    console.warn("Firebase initialization warning:", err);
  }
}
