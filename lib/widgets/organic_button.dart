import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/utils/colors.dart';

class OrganicButton extends StatelessWidget {

  final Function action;
  final String label;
  final IconData icon;
  OrganicButton(this.action, this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: action,
      color: AppColors.WHITE,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.DARK,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.LIGHT_GREEN,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              this.icon,
              color: AppColors.WHITE,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
