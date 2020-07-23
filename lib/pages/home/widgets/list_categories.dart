import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/models/category.model.dart';
import 'package:get/get.dart';

import '../controller.dart';
import 'item_categories.dart';

class ListCategories extends StatelessWidget {
  final HomeController controller = Get.find();

  ListCategories();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          itemCount: controller.categories.length,
          itemBuilder: (_, index) {
            CategoryModel category = controller.categories.elementAt(index);
            return Obx(() {
              return ItemCategories(
                category,
                category == controller.selectedCategory,
              );
            });
          },
        ),
      );
    });
  }
}
