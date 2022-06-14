import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/pages/home.dart';
import 'package:final_project_shopping/pages/signin.dart';
import 'package:final_project_shopping/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedHelper.authHelper.initSharedPRefernces();
  runApp(const MyApp());
}

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

        //   home: const HomeScreen(),
        routes: {'login': (context) => const SignIn()});
  }
}
