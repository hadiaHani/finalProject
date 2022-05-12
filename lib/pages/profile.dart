import 'package:final_project_shopping/model/clothes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  late Clothes clothes;
  PageController pageController = PageController();

  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue),
    );
  }
}
