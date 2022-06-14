import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/pages/categories.dart';
import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  const Detailes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Categories()));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              body: Container(
                height: double.infinity,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image:
                            AssetImage("${SharedHelper.authHelper.getImage()}"),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 520),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      //
                      padding:
                          const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      height: 212,
                      width: double.infinity,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " ${SharedHelper.authHelper.getName()} ",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 22),
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Size",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                            Text(
                              "XL",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Color",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$" "${SharedHelper.authHelper.getPrice()} ",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 22),
                              ),
                              RaisedButton(
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color.fromARGB(
                                            255, 255, 255, 255))),
                                color: const Color.fromARGB(255, 3, 235, 235),
                                onPressed: () {
                                  SharedHelper.authHelper.setName(
                                      "${SharedHelper.authHelper.getName()}");
                                  SharedHelper.authHelper.setPrice(
                                      "${SharedHelper.authHelper.getPrice()}");
                                  SharedHelper.authHelper.setImage(
                                      "${SharedHelper.authHelper.getImage()}");
                                },
                                child: const Text(
                                  "ADD TO BAG",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 3, 235, 235),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                              bottom: 27, right: 20, left: 20),
                          height: 80,
                          width: double.infinity,
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ));
  }
}
