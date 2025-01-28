import 'package:assignmenttwo/feature/post/presentation/screen/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class FetchDataApp extends StatelessWidget {
  const FetchDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
   home: PostScreen(),
    );
  }
}
