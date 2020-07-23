import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/product/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/organic_button.dart';

class ProductActions extends StatelessWidget {
  final ProductController controller = Get.find();
  final ProductModel product;

  ProductActions(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        border: Border(
          top: BorderSide(
            color: AppColors.LIGHT,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                this.product?.priceBrl ?? "0",
                style: TextStyle(
                  fontSize: 32,
                  color: AppColors.LIGHT_GREEN,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: OrganicButton(
                controller.addProduct,
                "ADD TO CART",
                Feather.shopping_cart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
