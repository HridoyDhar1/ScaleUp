import 'package:assignment/core/wigets/custom_horiztenal_image_list.dart';
import 'package:assignment/core/wigets/custom_section_header.dart';

import 'package:flutter/material.dart';

class TvShowScreen extends StatefulWidget {
  const TvShowScreen({super.key});
  static const String name = '/tvshow';

  @override
  State<TvShowScreen> createState() => _TvShowScreenState();
}

class _TvShowScreenState extends State<TvShowScreen> {
  final List<Map<String, String>> gridItems = [
    {"title": "Movie 1", "image": "assets/images/Group 38.png"},
    {"title": "Movie 2", "image": "assets/images/Group 39.png"},
    {"title": "Movie 3", "image": "assets/images/Group 41.png"},
    {"title": "Movie 4", "image": "assets/images/Group 39-2.png"},
    {"title": "Movie 5", "image": "assets/images/Group 38-2.png"},
    {"title": "Movie 6", "image": "assets/images/Group 41-2.png"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          SectionHeader(title: 'TV Shows Trending Today'),
          HorizontalList(
            imagePaths: [
              "assets/images/image-14.png",
              "assets/images/image-13.png",
              "assets/images/image-12.png",

            ], titles: [
              'The Diplomat',
           ' Breaking Bad',
            'Avatar: The Last Airbender'
          ],
          ),
          SectionHeader(title: 'Upcoming Movie and TV Shows'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2 / 3,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final item = gridItems[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item['title']!,
                      style: const TextStyle(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
