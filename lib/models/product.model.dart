import 'package:get/get.dart';

class ProductModel {
  ProductModel({
    int id,
    String name,
    double price,
    String image,
  }) {
    setId(id);
    setName(name);
    setPrice(price);
    setImage(image);
    setLike(false);
  }

  RxInt rxId = RxInt();
  setId(int value) => rxId.value = value;
  int get id {
    return rxId.value;
  }

  RxString rxName = RxString();
  setName(String value) => rxName.value = value;
  String get name {
    return rxName.value;
  }

  RxDouble rxPrice = RxDouble();
  setPrice(double value) => rxPrice.value = value;
  double get price {
    return rxPrice.value;
  }

  RxString rxImage = RxString();
  setImage(String value) => rxImage.value = value;
  String get image {
    return rxImage.value;
  }

  RxBool rxLike = RxBool();
  setLike(bool value) => rxLike.value = value;
  bool get like {
    return rxLike.value;
  }

  String get priceBrl {
    return "R\$" + this.price.toStringAsFixed(2);
  }

}
