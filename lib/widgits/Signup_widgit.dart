import 'package:final_project_shopping/data/authHelper.dart';
import 'package:final_project_shopping/pages/signin.dart';

import 'package:flutter/material.dart';

class SignupWidgit extends StatefulWidget {
  const SignupWidgit({Key? key}) : super(key: key);

  @override
  State<SignupWidgit> createState() => _SignupWidgitState();
}

class _SignupWidgitState extends State<SignupWidgit> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();
  void _showDialogs(String message) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text("Message!"),
              content: Text(message),
              actions: [
                FlatButton(
                    onPressed: () => {Navigator.of(context).pop()},
                    child: const Text("OK"))
              ],
            ));
  }

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
            margin: const EdgeInsets.only(top: 35),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.only(top: 20.0),
            //   height: 550,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              const Text(
                "Sign up",
                style: TextStyle(
                    //  fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, bottom: 15, right: 15, left: 15),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailcontroller,
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
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 9) {
                            return 'Invalid Phone number!';
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
                          labelText: "Phone",
                          labelStyle: TextStyle(fontSize: 20, color: b),
                          hintText: "Enter your Phone",
                          hintStyle: TextStyle(fontSize: 20, color: b),
                          prefixText: "+970 ",
                          // prefixIcon: Icon(Icons.phone, color: bl)
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: b),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'Password is too short!';
                          }
                          return null;
                        },
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: w,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 20, color: b),
                            hintText: "Enter your Password",
                            hintStyle: TextStyle(fontSize: 20, color: b),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visablePassword = !visablePassword;
                                });
                              },
                              icon: Icon(
                                  visablePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: b),
                            )),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: visablePassword,
                        style: TextStyle(color: b),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != _passwordcontroller.text) {
                            return 'Passwords do not match!';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: w,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            labelText: "Password Again",
                            labelStyle: TextStyle(fontSize: 20, color: b),
                            hintText: "Enter your Password Again",
                            hintStyle: TextStyle(fontSize: 20, color: b),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visablePassword = !visablePassword;
                                });
                              },
                              icon: Icon(
                                  visablePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: b),
                            )),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: visablePassword,
                        style: TextStyle(color: b),
                      ),
                    ],
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
                      "SIGN UP",
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        await AuthHelper.authHelper.creatUserUsingEmail(
                            _emailcontroller.text, _passwordcontroller.text);
                        _showDialogs('Account successfully created');
                        /*  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SignIn()));*/

                      }
                    },
                    color: const Color.fromRGBO(64, 216, 236, 1),
                    textColor: w,
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  )),
              const Text(
                "Login with Social",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/image/goagle.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/image/face.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/image/app.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const SignIn()));

                  setState(() {});
                },
                child: const Text(
                  "Already have account? Sign in",
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
