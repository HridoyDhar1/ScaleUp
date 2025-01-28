import 'package:assignment/feature/download/presentation/screen/download_screen.dart';
import 'package:assignment/feature/home/presentation/screens/home_screen.dart';
import 'package:assignment/feature/profile/presentation/screen/profile_screen.dart';
import 'package:assignment/feature/tv/presentation/screens/tv_show_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_bottom_controller.dart';

class CustomNavigationScreen extends StatelessWidget {
  final NavigationController navigationController = Get.put(NavigationController());
  static const String name = '/navigation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: navigationController.selectedIndex.value,
          children: const [
            HomeScrren(),
            TvShowScreen(),
            DownloadScreen(),
            ProfileScreen(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return Container(
          margin: EdgeInsets.all(12), // Creates a floating effect
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFF1B1D23), // Dark background color
            borderRadius: BorderRadius.circular(30), // Rounded shape
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, 0),
              _buildNavItem(Icons.tv, 1),
              _buildNavItem(Icons.download, 2),
              _buildNavItem(Icons.person, 3), // Updated icon from favorite to person
            ],
          ),
        );
      }),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => navigationController.updateIndex(index),
      child: Icon(
        icon,
        color: navigationController.selectedIndex.value == index ? Colors.red : Colors.grey,
        size: 28, // Adjusted size
      ),
    );
  }
}
