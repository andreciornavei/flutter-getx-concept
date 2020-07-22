import 'package:get/get.dart';
import './product.model.dart';

class CartItemModel {
  CartItemModel({
    ProductModel product,
    int quantity,
  }) {
    setProduct(product);
    setQuantity(quantity);
  }
  Rx<ProductModel> rxProduct = Rx<ProductModel>();
  setProduct(ProductModel value) => rxProduct.value = value;
  ProductModel get product {
    return rxProduct.value;
  }

  RxInt rxQuantity = RxInt();
  setQuantity(int value) => rxQuantity.value = value;
  int get quantity {
    return rxQuantity.value;
  }

  incrementQuantity() {
    if (this.quantity >= 10) {
      this.rxQuantity.value = 10;
    } else {
      this.rxQuantity.value += 1;
    }
  }

  decrementQuantity() {
    if (this.quantity <= 1) {
      this.rxQuantity.value = 1;
    } else {
      this.rxQuantity.value -= 1;
    }
  }
}
