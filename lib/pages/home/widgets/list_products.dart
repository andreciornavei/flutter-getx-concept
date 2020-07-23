import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/home/controller.dart';

import 'item_products.dart';

class HomeList extends StatelessWidget {
  final HomeController controller = Get.find();
  final double itemHeight = 130;
  final double itemWidth = Get.width / 2 - 100;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25.0,
              crossAxisSpacing: 25.0,
              childAspectRatio: itemWidth / itemHeight),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListItem(controller.products.elementAt(index));
            },
            childCount: controller.products.length ?? 0,
          ),
        );
      },
    );
  }
}
