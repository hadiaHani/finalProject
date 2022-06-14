import 'dart:developer';

import 'package:final_project_shopping/data/authHelper.dart';
import 'package:flutter/material.dart';

class FGPass extends StatefulWidget {
  const FGPass({Key? key}) : super(key: key);

  @override
  State<FGPass> createState() => _FGPassState();
}

class _FGPassState extends State<FGPass> {
  final _formkey = GlobalKey<FormState>();

  bool visablePassword = true;
  var r = Colors.red;
  var b = Colors.black;
  var w = Colors.white;
  var bl = Colors.blue;
  var g = Colors.green;
  var br = Colors.brown;
  var myController = TextEditingController();
  var str = "Text Failed";
  var str1 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Image.asset(
              "assets/image/logo.png",
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 35),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.only(top: 20.0),
            height: 700,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                height: 7,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Please enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 15, right: 15, left: 15),
                child: Form(
                  key: _formkey,
                  child: TextFormField(
                    controller: myController,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: w,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 20, color: b),
                      hintText: "aaa@gmail.com",
                      hintStyle: TextStyle(fontSize: 20, color: b),
                    ),
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: b),
                  ),
                ),
              ),
              Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 15, right: 15, left: 15),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Text(
                      "SEND NEW PASSWORD",
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("done");
                      }
                    },
                    color: const Color.fromRGBO(64, 216, 236, 1),
                    textColor: w,
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  )),
              const SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  AuthHelper.authHelper.forgetPassword(myController.text);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => const Signup()));

                  setState(() {});
                },
                child: const Text(
                  "Don’t have an account? Sign Up",
                  style: TextStyle(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
