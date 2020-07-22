import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/models/cart_item.model.dart';
import 'package:flutter_getx_concept/pages/cart/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/product_image.dart';

import 'cart_item_button.dart';

class CartItem extends StatelessWidget {
  final CartController cartController = Get.find();
  final CartItemModel cartItem;
  CartItem(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductImage(
          this.cartItem.product.image,
          height: 80,
          width: 80,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                this.cartItem.product.name,
                style: TextStyle(
                  fontSize: 19,
                  color: AppColors.DARK,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Obx(
                    () => Text(
                      "${this.cartItem.quantity.toString()}x ",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    this.cartItem.product.priceBrl,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.GREEN,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            CartItemButton(Feather.minus, this.cartItem.decrementQuantity),
            SizedBox(width: 10),
            CartItemButton(Feather.plus, this.cartItem.incrementQuantity),
            SizedBox(width: 10),
            CartItemButton(Feather.trash, () => cartController.deleteItem(this.cartItem)),
          ],
        )
      ],
    );
  }
}
