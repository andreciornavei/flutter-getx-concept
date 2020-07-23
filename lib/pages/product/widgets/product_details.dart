import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/product/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/organic_button.dart';

class ProductDetails extends StatelessWidget {
  final ProductController controller = Get.find();
  final ProductModel product;

  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),        
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 25),
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.LIGHT,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Obx(
                    () => Text(
                      controller.product?.name ?? "",
                      style: TextStyle(
                        fontSize: 32,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Obx(
                    () => Text(
                      controller.product?.description ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    this.product?.dollar ?? "0",
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
          ],
        ),
      ),
    );
  }
}
