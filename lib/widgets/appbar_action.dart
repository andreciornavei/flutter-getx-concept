import 'package:flutter/material.dart';
import 'package:flutter_getx_concept/utils/colors.dart';

class ActionNotification extends StatelessWidget {
  final Function action;
  final IconData icon;
  final int quantity;

  ActionNotification(this.action, this.icon, this.quantity);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: action,
        padding: EdgeInsets.zero,
        icon: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Icon(
              icon,
              size: 21,
              color: AppColors.GREEN,
            ),
            Positioned(
              top: -5,
              right: -10,
              child: Container(
                width: 15,
                height: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.DARK,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  quantity.toString() ?? "",
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.WHITE,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
