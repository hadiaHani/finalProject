import 'package:final_project_shopping/model/clothes.dart';
import 'package:final_project_shopping/widgits/clothes_widgit.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  late Clothes clothes;

  Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                    onPressed: () {},
                    color: Colors.black,
                    icon: const Icon(
                      Icons.filter_alt_outlined,
                    )),
                IconButton(
                    onPressed: () {},
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
                const ClothesWidgit(),
              ]),
            ),
          )),
        ));
  }
}
