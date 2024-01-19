import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC737JOUJodpHyQLjjjR9Dd5JFAIbYpXuY",
            authDomain: "ccdm-global.firebaseapp.com",
            projectId: "ccdm-global",
            storageBucket: "ccdm-global.appspot.com",
            messagingSenderId: "595413667012",
            appId: "1:595413667012:web:10c54c32f3c2171b3f0d91",
            measurementId: "G-TV67JJST9J"));
  } else {
    await Firebase.initializeApp();
  }
}
