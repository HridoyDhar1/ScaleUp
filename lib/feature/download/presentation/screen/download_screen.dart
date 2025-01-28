import 'package:assignment/core/constants/app_colors.dart';
import 'package:assignment/feature/download/presentation/widgets/downloded_movies.dart';
import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});
  static const String name = '/download';

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  final List<Map<String, String>> downloads = [
    {"title": "Money Heist I Season - 1", "image": "assets/images/Rectangle 23.png"},
    {"title": "The Umbrella Academy I", "image": "assets/images/Rectangle 26.png"},
    {"title": "Pushpa 2", "image": "assets/images/image-7.png"},
    {"title": "Lucky Baskhar", "image": "assets/images/image-8.png"},
    {"title": "Black Panther", "image": "assets/images/image-9.png"},
    {"title": "Castle in The Sky", "image": "assets/images/image-10.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Your Downloads",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 4,
          ),
          itemCount: downloads.length,
          itemBuilder: (context, index) {
            final download = downloads[index];
            final title = download['title'] ?? 'Untitled';
            final imagePath = download['image'] ?? 'assets/images/placeholder.png';

            return DownloadCard(
              title: title,
              imagePath: imagePath,
            );
          },
        ),

      ),

    );
  }
}
