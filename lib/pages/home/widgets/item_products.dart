import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/models/product.model.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/product_image.dart';

import 'item_products_add.dart';
import 'item_products_like.dart';

class ListItem extends StatelessWidget {
  final ProductModel product;
  ListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            color: AppColors.SHADOW,
            offset: Offset(6, 10),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 15,
              left: 25,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProductImage(
                  this.product.image,
                  width: 115,
                  height: 115,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.product.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      this.product.dollar,
                      style: TextStyle(
                        fontSize: 21,
                        color: AppColors.LIGHT_GREEN,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ItemAdd(product),
          ItemLike(product),
        ],
      ),
    );
  }
}
