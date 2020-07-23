import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:get/get.dart';

class ItemAdd extends StatelessWidget {
  final ProductModel product;
  ItemAdd(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: FlatButton(
          padding: EdgeInsets.zero,
          color: AppColors.LIGHT_GREEN,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Icon(
            Feather.shopping_bag,
            size: 21,
            color: AppColors.WHITE,
          ),
          onPressed: () =>
              Get.toNamed("/products/${this.product.id.toString()}"),
        ),
      ),
    );
  }
}
