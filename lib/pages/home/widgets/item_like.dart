import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/colors.dart';

class ItemLike extends StatelessWidget {
  final ProductModel product;
  ItemLike(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: -15,
      child: IconButton(
        icon: Obx(() {
          return Icon(
            Feather.heart,
            size: 21,
            color: product.like ? AppColors.GREEN : AppColors.LIGHT_GREY,
          );
        }),
        onPressed: () => product.setLike(!product.like),
      ),
    );
  }
}
