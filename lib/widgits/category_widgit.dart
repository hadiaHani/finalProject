import 'dart:developer';

import 'package:final_project_shopping/data/authHelper.dart';
import 'package:final_project_shopping/data/clothes_data.dart';
import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/pages/categories.dart';
import 'package:final_project_shopping/pages/signin.dart';
import 'package:final_project_shopping/widgits/cart.dart';

import 'package:flutter/material.dart';

class CategoryWidgit extends StatefulWidget {
  const CategoryWidgit({Key? key}) : super(key: key);

  @override
  State<CategoryWidgit> createState() => _CategoryWidgitState();
}

class _CategoryWidgitState extends State<CategoryWidgit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  Icons.list_rounded,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Cart()));
                    },
                    color: Colors.black,
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                    )),
                IconButton(
                    color: Colors.black,
                    onPressed: () async {
                      await AuthHelper.authHelper.signOut();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignIn()));
                    },
                    icon: const Icon(
                      Icons.logout,
                    )),
              ],
            ),
            body: SafeArea(
                child: ListView(children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                  children: List.generate(categories.length, (index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {
                              log("hhhhhhhhhhhhhhhhhhhhhhhh");
                              SharedHelper.authHelper
                                  .setTitle("${categories[index]['title']}");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Categories()));
                            },
                            child: Image.asset(
                                categories[index]['imgUrl'] as String,
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  categories[index]['title'] as String,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )))
                      ],
                    ));
              }))
            ]))));
  }
}
