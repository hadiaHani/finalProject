import 'package:final_project_shopping/data/clothes_data.dart';
import 'package:flutter/material.dart';

class ClothesWidgit extends StatelessWidget {
  const ClothesWidgit({Key? key}) : super(key: key);

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
        children: product.map((e) {
          return Padding(
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
                  ]));
        }).toList());
  }
}
