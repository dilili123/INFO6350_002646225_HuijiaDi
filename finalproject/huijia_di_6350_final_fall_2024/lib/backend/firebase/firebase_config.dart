import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAm1oZApGZ8Kw2Ngy8kcW2n0fbAZSCpPTI",
            authDomain: "neu-fall-2024-final-huijiadi.firebaseapp.com",
            projectId: "neu-fall-2024-final-huijiadi",
            storageBucket: "neu-fall-2024-final-huijiadi.firebasestorage.app",
            messagingSenderId: "620157121458",
            appId: "1:620157121458:web:6e3231d765fa7f74716aab",
            measurementId: "G-ESFQC9MP7H"));
  } else {
    await Firebase.initializeApp();
  }
}
