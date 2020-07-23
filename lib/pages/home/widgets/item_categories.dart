import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/models/category.model.dart';
import 'package:flutter_getx_concept/pages/home/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:get/get.dart';

class ItemCategories extends StatelessWidget {

  final HomeController controller = Get.find();
  final CategoryModel category;
  final bool selected;
  
  ItemCategories(this.category, this.selected);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () =>  controller.selectCategory(category),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        this.category.name,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: AppColors.DARK.withOpacity(selected ? 1 : 0.5),
        ),
      ),
    );
  }
}
