import 'package:flutter/material.dart';

class BuildOnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const BuildOnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(image, height: 300, width: 280),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(3, 3, 3, 1),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Color.fromRGBO(123, 123, 123, 1)
            )
          )
        ]
      ),
    );
  }
}