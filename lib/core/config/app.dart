import 'package:assignmentthree/feature/hive/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}
