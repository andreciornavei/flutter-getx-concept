import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_getx_concept/models/cart_item.model.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/json.dart';

import '../../controller.dart';

class ProductController extends GetxController {
  AppController appController = Get.find();
  Rx<ProductModel> _product = Rx<ProductModel>();
  setProduct(ProductModel value) => _product.value = value;
  ProductModel get product {
    return _product.value;
  }

  ProductController() {
    loadProduct();
  }

  loadProduct() async {
    try {
      List<dynamic> data = await loadJson("assets/data/products.json");
      dynamic item = data.firstWhere((item) {
        return item["id"].toString() == Get.parameters["id"].toString();
      });
      setProduct(ProductModel(
        id: item["id"],
        name: item["name"],
        category: item["category"],
        price: item["price"],
        image: item["image"],
        description: item["description"],
      ));
    } catch (error) {
      print(error.toString());
    }
  }

  addProduct() {
    try {
      CartItemModel cartItem =
          appController.cartItems.value.firstWhere((cartItem) {
        return cartItem.product.id == this.product.id;
      });
      cartItem.incrementQuantity();
    } catch (error) {
      appController.cartItems.add(CartItemModel(
        product: this.product,
        quantity: 1,
      ));
    }
    Get.back();
  }
}
