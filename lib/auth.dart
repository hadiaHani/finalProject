import 'dart:async';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
/*
  Future<void> authunticate(
      String email, String password, String urlSegment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyDFNWMaLVbrxG0DzTBty42k8qsmbikKnmg";

    try {
      final res = await http.post(Uri.parse(url),
          body: json.encode({
            'email': email,
            "password": password,
            "returnSecureToken": true,
          }));

      final resData = json.decode(res.body);
      if (resData['error'] != null) {
        throw "${resData['error']['message']} ";
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signUp(String email, String password) async {
    return authunticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return authunticate(email, password, 'signInWithPassword');
  }
}    

class User {
  final String uid;
  User({required this.uid});
}

class AuthBase {
  User _userFromFirebase(FirebaseUser user) {
    return User(uid: user.uid);
  }

  Future<void> signupp(String email, String password) async {
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  Future<void> signinn(String email, String password) async {
 final authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
       return _userFromFirebase(authResult.user);

    }
     Future<void> logout() async {
  await FirebaseAuth.instance.signOut();
  */

}
