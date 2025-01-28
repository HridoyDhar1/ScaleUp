import 'package:flutter/material.dart';

class PayingCard extends StatelessWidget {
  const PayingCard({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 80,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1C1F26),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.credit_card, color: Colors.white),
          label:  Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
