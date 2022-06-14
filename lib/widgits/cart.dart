import 'package:final_project_shopping/data/clothes_data.dart';
import 'package:final_project_shopping/data/sharedHelper.dart';
import 'package:final_project_shopping/model/clothes.dart';
import 'package:final_project_shopping/pages/home.dart';
import 'package:final_project_shopping/widgits/category_widgit.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);
  List<Clothes> products1 = [];

  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
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
            ),
            body: SafeArea(
              child: ListView(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    "Shopping Bag",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                    children: List.generate(product.length, (index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 184, 167, 167),
                              ),
                            ),
                            padding: const EdgeInsets.only(
                                right: 2, left: 2, top: 5),
                            height: 150,
                            //6 color: const Color.fromARGB(192, 218, 66, 210),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage: AssetImage(
                                        "${SharedHelper.authHelper.getImage()}"),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          " ${SharedHelper.authHelper.getName()} ",
                                          style: const TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                          )),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                      const Text(
                                        "color",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    " ${SharedHelper.authHelper.getPrice()} ",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ));
                })),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Text(
                          "SHOP NOW",
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HomeScreen()));
                        },
                        color: const Color.fromRGBO(64, 216, 236, 1),
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      )),
                )
              ]),
            )));

    */
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
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
            ),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Text(
                        "Shopping Bag",
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 184, 167, 167),
                        ),
                      ),
                      padding: const EdgeInsets.only(right: 2, left: 2, top: 5),
                      height: 150,
                      //6 color: const Color.fromARGB(192, 218, 66, 210),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage(
                                  "${SharedHelper.authHelper.getImage()}"),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(" ${SharedHelper.authHelper.getName()} ",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                    )),
                                const SizedBox(
                                  height: 22,
                                ),
                                const Text(
                                  "color",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              " ${SharedHelper.authHelper.getPrice()} ",
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: const Text(
                              "SHOP NOW",
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomeScreen()));
                            },
                            color: const Color.fromRGBO(64, 216, 236, 1),
                            textColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          )),
                    ),
                  ],
                ),
                alignment: Alignment.bottomRight,
              ),
            )));
  }
}
