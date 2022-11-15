import 'package:flutter/material.dart';
import 'package:food_app/utils/app_color.dart';
import 'package:food_app/utils/app_size_config.dart';

class OnBordingContent extends StatelessWidget {
  const OnBordingContent({
    Key? key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);
  final String? title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(280),
          width: getProportionateScreenWidth(400),
        ),
        const Spacer(flex: 2),
        const SizedBox(
          height: 50,
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: AppColor.redColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 31,
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: AppColor.blackColor,
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
