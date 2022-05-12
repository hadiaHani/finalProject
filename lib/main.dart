import 'package:final_project_shopping/auth.dart';
import 'package:final_project_shopping/pages/categories.dart';
import 'package:final_project_shopping/pages/home.dart';
import 'package:final_project_shopping/pages/signin.dart';
import 'package:final_project_shopping/pages/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  /*WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();*/
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash(),

        // home: Categories(),
        routes: {'login': (context) => const SignIn()});
  }
}
