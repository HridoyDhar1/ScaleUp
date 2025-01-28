import 'package:assignment/core/wigets/movie_screen_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomHorizentalCastScreen extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> titles;

  const CustomHorizentalCastScreen({
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
      height: 180, // Adjusted height for circular images
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
                child: CircleAvatar(
                  radius: 50, // Adjusted for better size
                  backgroundColor: const Color(0xFF1C1F26), // Background color
                  child: ClipOval(
                    child: Image.asset(
                      imagePaths[index],
                      height: 50, // Ensure it fits inside the circle
                      width: 50,
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
              SizedBox(
                width: 100, // Ensure text doesn't overflow
                child: Text(
                  titles[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1, // Avoid text wrapping
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
