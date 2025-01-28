

import 'package:flutter/material.dart';

class PlayingListScreen extends StatelessWidget {
  final List<String> imagePaths;
  final VoidCallback onPressed;
  const PlayingListScreen({
    required this.imagePaths,
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePaths.isEmpty) {
      return const Center(
        child: Text(
          'No images available.',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return SizedBox(
      height: 200,
      child:
      ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return
            Container(
            width: 230,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF1C1F26),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: onPressed,
                child: Image.asset(
                  imagePaths[index],
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
          );
        },
      ),
    );
  }
}
