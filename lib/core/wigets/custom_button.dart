import 'package:flutter/material.dart';

import 'package:assignment/core/constants/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentColor,
        fixedSize: const Size(double.maxFinite, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        buttonName,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
