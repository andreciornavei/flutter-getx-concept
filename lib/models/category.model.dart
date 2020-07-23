import 'package:get/get.dart';

class CategoryModel {
  CategoryModel({
    String key,
    String name,
  }) {
    this.key = key;
    this.name = name;
  }

  RxString _key = RxString();
  set key(String value) => _key.value = value;
  String get key => _key.value;

  RxString _name = RxString();
  set name(String value) => _name.value = value;
  String get name => _name.value;
}
