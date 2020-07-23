import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/widgets/appbar_action.dart';
import 'package:flutter_getx_concept/widgets/custom_appbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
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
          appBar: CustomAppBar(
            "Cart",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
      },
    );
  }
}
