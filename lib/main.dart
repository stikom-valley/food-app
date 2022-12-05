import 'package:flutter/material.dart';
import 'package:food_app/utils/app_color.dart';
import 'package:food_app/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColor.mainColor
        )
      ),
      initialRoute: AppRoutes.loginPage,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
