import 'package:flutter/material.dart';

class BuildMealOptionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Color bgColor;
  final Color iconColor;
  final Color subtitleColor;

  const BuildMealOptionCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.bgColor,
    required this.iconColor,
    required this.subtitleColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromRGBO(251, 247, 254, 1),
            bgColor,
          ],
          stops: [0, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.person, color: iconColor, size: 15),
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: subtitleColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: iconColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(252, 255, 247, 1), size: 16),
                  ),
                ],
              ),
            ),
            
            Image.asset(imagePath, height: 150,
            width: double.infinity,
            fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}