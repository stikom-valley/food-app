import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/Login.dart';
import 'package:food_app/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food App',
      initialRoute: AppRoutes.mainPage,
      onGenerateRoute: AppRouter.generateRoute,
      home: LoginPage(),
    );
  }
}
