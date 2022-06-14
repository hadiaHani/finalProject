import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  SharedHelper._();
  static SharedHelper authHelper = SharedHelper._();
  SharedPreferences? shared;
  initSharedPRefernces() async {
    shared = await SharedPreferences.getInstance();
  }

  setTitle(String title) {
    shared?.setString("title", title);
  }

  String getTitle() {
    String? title = shared?.getString("title");
    return title!;
  }

  setName(String name) {
    shared?.setString("name", name);
  }

  String? getName() {
    String? name = shared?.getString("name");
    return name;
  }

  setImage(String img) {
    shared?.setString("img", img);
  }

  String? getImage() {
    String? img = shared?.getString("img");
    return img;
  }

  setPrice(String price) {
    shared?.setString("price", price);
  }

  String? getPrice() {
    String? price = shared?.getString("price");
    return price;
  }
}
