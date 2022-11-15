import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/on_bording/components/body.dart';
import 'package:food_app/utils/app_size_config.dart';

class OnBordingScreen extends StatelessWidget {
  final String onBording;

  const OnBordingScreen({Key? key, required this.onBording}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
