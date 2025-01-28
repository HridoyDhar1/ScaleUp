import 'package:flutter/material.dart';

class CategoryChip extends StatefulWidget {


  const CategoryChip({super.key});

  @override
  State<CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  final List<String> categories = ["All", "Action", "Anime", "Sci-fi", "Thriller"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.red : const Color(0xFF1C1F26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.white70,
                  ),
                ),
              ),
            ),
          );
        }),
      );
  }
}