import 'package:assignment/core/wigets/movie_screen_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalList extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> titles;

  const HorizontalList({
    required this.imagePaths,
    required this.titles,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePaths.isEmpty || titles.isEmpty) {
      return const Center(
        child: Text(
          'No images available.',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(MovieScreenDetails.name);
                },
                child: Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1C1F26),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePaths[index],
                      height: 150,
                      width: 120,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                titles[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
