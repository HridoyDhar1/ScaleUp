import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hello Rafsan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Let's watch today",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/icons/profile.png"),
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              "assets/icons/profile.png",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
