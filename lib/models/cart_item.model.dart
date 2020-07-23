import 'package:get/get.dart';
import './product.model.dart';

class CartItemModel {
  CartItemModel({
    ProductModel product,
    int quantity,
  }) {
    this.product = product;
    this.quantity = quantity;
  }
  Rx<ProductModel> _product = Rx<ProductModel>();
  set product(ProductModel value) => _product.value = value;
  ProductModel get product => _product.value;

  RxInt _quantity = RxInt();
  set quantity(int value) => _quantity.value = value;
  int get quantity => _quantity.value;

  incrementQuantity() {
    if (this.quantity >= 10) {
      this.quantity = 10;
    } else {
      this.quantity += 1;
    }
  }

  decrementQuantity() {
    if (this.quantity <= 1) {
      this.quantity = 1;
    } else {
      this.quantity -= 1;
    }
  }
}
