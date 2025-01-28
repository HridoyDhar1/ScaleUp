
import 'package:assignment/core/constants/app_images.dart';

import 'package:assignment/core/wigets/main_bottom_controller.dart';
import 'package:assignment/feature/home/presentation/wigets/category_chip.dart';
import 'package:assignment/core/wigets/custom_horiztenal_image_list.dart';
import 'package:assignment/feature/home/presentation/wigets/playing_card.dart';
import 'package:assignment/core/wigets/custom_section_header.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../wigets/home_screen_hedader.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});
  static const String name = '/home';

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  final NavigationController navController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeScreenHeader(),
                const SizedBox(height: 20),

                // Search Bar
                Row(
                  children: [

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF1C1F26),
                          hintText: "Search",
                          hintStyle: const TextStyle(color: Colors.white70),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white54, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white54, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white54, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings, color: Colors.white),
                      onPressed: () {

                      },
                    ),
                  ],
                )
,
                const SizedBox(height: 20),

                // Categories
                SectionHeader(title: 'Categories'),
                const SizedBox(height: 20),
                CategoryChip(),
                const SizedBox(height: 20),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    AssetImages.person,
                    height: 200,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),

                // Trending
                SectionHeader(title: "Trending Movies"),
                const SizedBox(height: 10),
                HorizontalList(
                  imagePaths: [
                   AssetImages.tradingImageOne,
                   AssetImages.tradingImageTwo,
                   AssetImages.tradingImageThree,
                   AssetImages.tradingImageFour,
                   AssetImages.tradingImageFive,
                  ], titles: [
                    'Yes I Do',
                  'Inside Out 2',
                  'Babylon ',
                  'Inside Out 2',
                  'Babylon ',
                ],

                ),
                const SizedBox(height: 20),

                // Continue Watching
                SectionHeader(title: "Continue Watching"),
                const SizedBox(height: 10),
                PlayingListScreen(
                  imagePaths: [
                    AssetImages.continueImageOne,
                    AssetImages.continueImageTwo,
                  ],
                  onPressed: () {},
                ),
                const SizedBox(height: 20),

                // Recommended For You
                SectionHeader(title: "Recommended For You"),
                const SizedBox(height: 10),
                HorizontalList(
                  imagePaths: [
                    AssetImages.recommendedImageOne,
                    AssetImages.recommendedImageTwo,
                    AssetImages.recommendedImageThree,

                  ], titles: [
             "     Double Love",
                 " Sunita",
                 " Pokemon: detective Pikachu"
                ],

                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

