import 'dart:async';

import 'package:final_project_shopping/pages/signin.dart';
import 'package:flutter/material.dart';
//import 'package:login_register_auth/ui/widgets/original_button.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/splash.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: null));
  }
}
