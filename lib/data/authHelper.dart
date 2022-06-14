import 'dart:developer';

import 'package:final_project_shopping/pages/home.dart';
import 'package:final_project_shopping/pages/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthHelper {
  AuthHelper._();

  static AuthHelper authHelper = AuthHelper._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String?> creatUserUsingEmail(
      String email, String password, BuildContext context) async {
    FocusScope.of(context).unfocus();

    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
      return credential.user?.uid;
    } catch (e) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignIn()));
              },
              child: const Text('OK'),
            ),
          ],
          content: Text(
            e.toString(),
          ),
          title: const Text('Error'),
        ),
      );
    }
  }

  Future<String?> login(
      String email, String password, BuildContext context) async {
    FocusScope.of(context).unfocus();

    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const HomeScreen()));
      return credential.user?.uid;
    } catch (e) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignIn()));
              },
              child: const Text('OK'),
            ),
          ],
          content: Text(
            e.toString(),
          ),
          title: const Text('Error'),
        ),
      );
    }
  }

  User? getUser() {
    User? user = firebaseAuth.currentUser;
    return user;
  }

  signOut() async {
    await firebaseAuth.signOut();
  }

  forgetPassword(String email) async {
    await firebaseAuth
        .sendPasswordResetEmail(email: email)
        .whenComplete(() => log("your new passwsord sent to your email"));
  }
}
