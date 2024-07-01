import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAkoFuIamHLoRbaKMgHubg6KjxtJZo-nnk",
            authDomain: "f-f-clases-updated-span-jv4bf7.firebaseapp.com",
            projectId: "f-f-clases-updated-span-jv4bf7",
            storageBucket: "f-f-clases-updated-span-jv4bf7.appspot.com",
            messagingSenderId: "1077795263527",
            appId: "1:1077795263527:web:d4a8bb20ade221ed1a6a02"));
  } else {
    await Firebase.initializeApp();
  }
}
