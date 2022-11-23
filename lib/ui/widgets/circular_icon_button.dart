import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  final Color shadowColor;
  final Color iconColor;
  final double radius;
  Color backgroundColor;
  double iconSize;
  CircularIconButton({super.key, required this.icon, this.onPressed,required this.shadowColor,required this.iconColor,required this.radius,this.backgroundColor=AppColor.whiteColor,this.iconSize=24});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5, color: shadowColor, spreadRadius: 1)
            ],
          ),
          child: CircleAvatar(
            backgroundColor:backgroundColor,
            radius:radius,
            child: Center(
              child: Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}