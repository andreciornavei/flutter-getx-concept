import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_getx_concept/pages/cart/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'widgets/cart_list.dart';
import 'widgets/cart_total.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: AppBar(
            elevation: 0,
            title: Text("Carrinho"),
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
