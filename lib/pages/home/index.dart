import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/widgets/custom_appbar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/home/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/appbar_action.dart';
import 'widgets/list_products.dart';
import 'widgets/list_categories.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: CustomAppBar(
            "GetX Concepts",
            actions: [
              Obx(
                () => CustomAppBarAction(
                  () => Get.toNamed("/cart"),
                  Feather.shopping_cart,
                  quantity: controller.cartQuantity,
                ),
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: ListCategories(),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                sliver: HomeList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
