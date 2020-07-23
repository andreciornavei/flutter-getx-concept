import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/widgets/appbar_action.dart';
import 'package:flutter_getx_concept/widgets/custom_appbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/product/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/product_image.dart';

import 'widgets/product_actions.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "Product",
            leadings: [
              CustomAppBarAction(
                () => Get.back(),
                Feather.arrow_left,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Obx(
                  () => ProductImage(
                    controller?.product?.image,
                    height: Get.width - 50,
                    padding: 25,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: AppColors.WHITE,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
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
              ],
            ),
          ),
          bottomNavigationBar: Obx(() => ProductActions(controller.product)),
        );
      },
    );
  }
}
