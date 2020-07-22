import 'package:get/state_manager.dart';
import 'package:flutter_getx_concept/models/cart_item.model.dart';

class AppController extends GetxController{

  RxList<CartItemModel> cartItems = RxList<CartItemModel>([]);

}