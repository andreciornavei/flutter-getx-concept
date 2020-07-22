import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_getx_concept/controller.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/json.dart';

class HomeController extends GetxController {
  AppController appController = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  int get totalCart {
    return appController.cartItems.length;
  }

  HomeController() {
    loadItems();
  }

  loadItems() async {
    List<dynamic> data = await loadJson("assets/data/products.json");
    products.addAll(
      data
          .map<ProductModel>(
            (product) => ProductModel(
              id: product["id"],
              name: product["name"],
              price: product["price"],
              image: product["image"],
            ),
          )
          .toList(),
    );
  }
}
