import 'package:assignmentthree/core/config/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('postsBox');

  runApp(MyApp());
}

