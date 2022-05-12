import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:final_project_shopping/pages/categories.dart';
import 'package:final_project_shopping/pages/favorite.dart';
import 'package:final_project_shopping/pages/profile.dart';
import 'package:final_project_shopping/widgits/category_widgit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // late Clothes clothes;
  //late PageController pageController;
  //var screens = [HomeScreen(), favorite(), Categories()];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var screens = [const HomeScreen(), favorite(), Categories(), Profile()];

  PageController pageController = PageController();

  int _currentIndex = 0;

  Widget _buildLightDesign() {
    return CustomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 100), curve: Curves.linear);
      },
      iconSize: 30.0,
      selectedColor: const Color(0xff040307),
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color.fromARGB(255, 241, 211, 211),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.favorite),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.person),
        ),
      ],
      currentIndex: _currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: _buildLightDesign(),
          body: Column(children: [
            Expanded(
              child: PageView(controller: pageController, children: [
                const CategoryWidgit(),
                Categories(),
                favorite(),
                Profile()
              ]),
            )
          ])),
    );
  }
}
