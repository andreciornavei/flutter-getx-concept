import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'routes.dart';
import 'utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // For the main component, was needed to use make use of
    // Get.put(AppController()) because in the current code context
    // doesnt exists the possibility of use the GetBuilder who is
    // the life cycle manager of controllers. But in this case
    // we dont need it because our AppController is used for global
    // purposes and never should be disposed (sounds like Provider).
    Get.put(AppController());

    // This project make use of named routes on GetMaterialApp
    // to explore more options os passing parameters between routes
    // see the routes.dart file to understand more.

    // In general, making use of GetMaterialApp, it starts a globally
    // StatefullWidgets who manage the state of our application and allows
    // static functions as an alternative for some Flutter APIs where in the most
    // of cases is implemented with short names and the use of context 
    // variable is abstracted. In time, it also allow that all our Pages and Widgets
    // could be a StatelessWidget getting less resources of our device and
    // still working with less complexities.

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.WHITE,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: routes(),
    );
  }
}