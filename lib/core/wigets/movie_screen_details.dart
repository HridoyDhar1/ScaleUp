// ignore_for_file: deprecated_member_use

import 'package:assignment/core/constants/app_images.dart';
import 'package:assignment/core/wigets/custom_button.dart';
import 'package:assignment/core/wigets/custom_horizental_cast.dart';
import 'package:assignment/core/wigets/custom_horiztenal_image_list.dart';
import 'package:assignment/core/wigets/custom_section_header.dart';
import 'package:assignment/core/wigets/video_playing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

import '../constants/app_colors.dart';

class MovieScreenDetails extends StatefulWidget {
  const MovieScreenDetails({super.key});
  static const String name = '/details';

  @override
  State<MovieScreenDetails> createState() => _MovieScreenDetailsState();
}

class _MovieScreenDetailsState extends State<MovieScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/details.png',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/image-11.png',
                          height: 150,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Stranger Things',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '2016 | 16+ | 4 Seasons | Sci-Fi',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      buttonName: "Play Now",
                      onPressed: () {
                        Get.toNamed(VideoPlayerScreen.name);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.download, color: AppColors.accentColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Watch Stranger Things Series Trailer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/details.png',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(VideoPlayerScreen.name);
                      },
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SectionHeader(title: 'Top Cast'),
            CustomHorizentalCastScreen(imagePaths: ["assets/images/Ellipse 6.png","assets/images/Ellipse 6-2.png","assets/images/Ellipse 6.png","assets/images/Ellipse 6.png","assets/images/Ellipse 6-2.png"], titles: ['Millie Bobby Brown','Joe Keery','Finn Wolfhard','Millie Bobby Brown','Joe Keery'
            ]),
            SectionHeader(title: 'Recommended For You'),
            HorizontalList(imagePaths: [
              AssetImages.recommendedImageOne,
              AssetImages.recommendedImageTwo,
              AssetImages.recommendedImageThree,
            ], titles: ["     Double Love",
              " Sunita",
              " Pokemon: detective Pikachu"])
          ],
        ),
      ),

    );
  }
}