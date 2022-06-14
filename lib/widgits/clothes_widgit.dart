import 'dart:developer';
import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/model/clothes.dart';
import 'package:final_project_shopping/widgits/detailes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClothesWidgit extends StatelessWidget {
  ClothesWidgit(this.products, {Key? key}) : super(key: key);
  List<Clothes> products = [];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        controller: ScrollController(keepScrollOffset: true),
        // ),
        childAspectRatio: 10 / 13,
        children: products.map((e) {
          return GestureDetector(
            onTap: () {
              log("hhhhhhhhhhhhhhhhhhhhhhhh");
              SharedHelper.authHelper.setName(e.name);
              SharedHelper.authHelper.setPrice(e.price);
              SharedHelper.authHelper.setImage(e.img);
              log(e.img);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Detailes()));
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 160,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage(e.img), fit: BoxFit.fill))),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(e.name), Text("\$ " + e.price)],
                      )
                    ])),
          );
        }).toList());
  }
}
