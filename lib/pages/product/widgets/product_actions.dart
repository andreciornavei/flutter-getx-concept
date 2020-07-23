import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/product/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/organic_button.dart';

class ProductActions extends StatelessWidget {

  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: AppColors.WHITE,
      child: SafeArea(
        child: OrganicButton(
          controller.addProduct,
          "ADD TO CART",
          Feather.shopping_cart,
        ),
      ),
    );
  }
}
