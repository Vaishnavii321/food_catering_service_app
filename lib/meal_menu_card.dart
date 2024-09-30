import 'package:flutter/material.dart';

class MealMenuCard extends StatelessWidget {
  final String itemCount;
  final String imagePath;
  final Color backgroundColor;

  const MealMenuCard({
    required this.itemCount,
    required this.imagePath,
    required this.backgroundColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 25,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(27, 14, 40, 1),
                    Color.fromRGBO(99, 24, 175, 1),
                  ],
                  stops: [0, 1.0],
                ),
              ),
              child: Text(
                '$itemCount Items Box',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}