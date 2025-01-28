import 'package:assignment/core/wigets/custom_navigation.dart';
import 'package:assignment/core/wigets/movie_screen_details.dart';
import 'package:assignment/core/wigets/video_playing_screen.dart';
import 'package:assignment/feature/auth/presentation/screens/forget_password_screen.dart';

import 'package:assignment/feature/auth/presentation/screens/login_screen.dart';
import 'package:assignment/feature/auth/presentation/screens/reset_password_screen.dart';
import 'package:assignment/feature/auth/presentation/screens/singup_screen.dart';
import 'package:assignment/feature/auth/presentation/screens/subscription_screen.dart';
import 'package:assignment/feature/auth/presentation/screens/verification_code_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_theme.dart';
import 'controller_binder.dart';

class Ulptv extends StatelessWidget {
  const Ulptv({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
     initialBinding: ControllerBinder(),
      initialRoute: LoginScreen.name,
    getPages: [
  GetPage(name: '/login', page: ()=>LoginScreen()),
      GetPage(name: "/navigation", page:()=> CustomNavigationScreen()),
      GetPage(name: "/details", page:()=> MovieScreenDetails()),
      GetPage(name: "/videoplay", page:()=> VideoPlayerScreen()),
      GetPage(name: '/singup', page: ()=>SingUpScreen()),
      GetPage(name: '/forgetpassword', page: ()=>ForgetPasswordScreen()),
      GetPage(name: '/restpass', page: ()=>ResetPasswordScreen()),
      GetPage(name: '/verification', page: ()=>VerificationCodeScreen()),
      GetPage(name: '/subscription', page: ()=>SubscriptionScreen()),

    ],
    );
  }
}
