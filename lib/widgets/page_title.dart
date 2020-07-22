import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/utils/colors.dart';

class PageTitle extends StatelessWidget {
  final String title;
  PageTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 30,
          color: AppColors.PRIMARY_COLOR,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
