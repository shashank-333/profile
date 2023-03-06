import 'package:flutter/material.dart';
import 'package:shash/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyALOE3ATDaJA9cLQt5lWrqP5o_0A1TYdSM",
          authDomain: "shashank-d0d94.firebaseapp.com",
          projectId: "shashank-d0d94",
          storageBucket: "shashank-d0d94.appspot.com",
          messagingSenderId: "461550542429",
          appId: "1:461550542429:web:d35d89c565fce86e21f7b4",
          measurementId: "G-D9PG0CHDTJ"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
