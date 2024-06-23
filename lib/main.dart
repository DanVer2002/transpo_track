import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:transpo_track/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAA_EHzOLa5HJXfR-CKbS2iWueL2B_Fzpk",
            authDomain: "transpo-firebase.firebaseapp.com",
            projectId: "transpo-firebase",
            storageBucket: "transpo-firebase.appspot.com",
            messagingSenderId: "710897134178",
            appId: "1:710897134178:web:08fe15204a334a3e937f3b",
            measurementId: "G-20ZL5VGB8C"),
      );
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print('Error initializing Firebase: $e');
  }

  runApp(const App());
}
