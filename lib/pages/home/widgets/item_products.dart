import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/product_image.dart';

import 'item_products_like.dart';

class ListItem extends StatelessWidget {
  final ProductModel product;
  ListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 15,
              color: AppColors.SHADOW,
              offset: Offset(6, 10)),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: FlatButton(
        onPressed: () => Get.toNamed("/products/${this.product.id.toString()}"),
        color: AppColors.WHITE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ProductImage(
                    this.product.image,
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        this.product.name,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.DARK,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        this.product.priceBrl,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.GREEN,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ItemLike(product),
          ],
        ),
      ),
    );
  }
}
