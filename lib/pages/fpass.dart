import 'package:final_project_shopping/widgits/forget_widgit%20copy.dart';
import 'package:flutter/material.dart';
//import 'package:login_register_auth/ui/widgets/auth_form.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  //final AuthType authType;

  // const Login({required Key key, required this.authType}) : super(key: key);

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
            child: const FGPass()));
  }
}
