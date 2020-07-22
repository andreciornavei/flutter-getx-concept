import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_concept/pages/home/controller.dart';
import 'package:flutter_getx_concept/utils/colors.dart';
import 'package:flutter_getx_concept/widgets/appbar_action.dart';
import 'package:flutter_getx_concept/widgets/page_title.dart';
import 'widgets/list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: AppBar(
            elevation: 0,
            title: Text("Flutter GetX Concept"),
            actions: <Widget>[
              Obx(
                () => ActionNotification(
                  () => Get.toNamed("/cart"),
                  Feather.shopping_cart,
                  controller.totalCart,
                ),
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: PageTitle("FRUITS"),
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
