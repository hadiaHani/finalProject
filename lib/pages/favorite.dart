import 'package:final_project_shopping/model/clothes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class favorite extends StatelessWidget {
  late Clothes clothes;
  PageController pageController = PageController();

  favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.green),
    );
  }
}
