import 'package:flutter/material.dart';
import 'package:safuel_app/home/home_page.dart';
import 'package:safuel_app/shared/styles/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safuel',
      theme: ThemeData(
        primaryColor: AppColors.primaryDarkColor,
      ),
      home: HomePage(),
    );
  }
}
