import 'package:final_project_shopping/widgits/Signup_widgit.dart';
import 'package:flutter/material.dart';
//import 'package:login_register_auth/ui/widgets/auth_form.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const SignupWidgit()));
  }
}
