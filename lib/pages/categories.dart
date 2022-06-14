import 'dart:developer';

import 'package:final_project_shopping/data/clothes_data.dart';
import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/model/clothes.dart';
import 'package:final_project_shopping/widgits/cart.dart';
import 'package:final_project_shopping/widgits/category_widgit.dart';
import 'package:final_project_shopping/widgits/clothes_widgit.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late Clothes clothes;

  List<Clothes> productsList = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= product.length - 1; i++) {
      log("${SharedHelper.authHelper.getTitle()}");
      if (SharedHelper.authHelper.getTitle() == product[i].category) {
        log("jjjjjjjjjjjjjjjjjjj");
        productsList.add(Clothes(product[i].img, product[i].name,
            product[i].price, product[i].category));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CategoryWidgit()));
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
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
                    ))
              ]),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    )),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 15, top: 15),
                  child: const Text(
                    "New Arrivals",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClothesWidgit(productsList),
              ]),
            ),
          )),
        ));
  }
}
