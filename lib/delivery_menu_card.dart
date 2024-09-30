import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class BuildMenuCard extends StatelessWidget {
  final String title;
  final String categories;
  final String imagePath;

  const BuildMenuCard({
    required this.title,
    required this.categories,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 8,
          offset: Offset(0, 3),
        ),
      ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(imagePath, height: 120, width: double.infinity, fit: BoxFit.cover)),
                Positioned(
                  top: 15,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(99, 24, 175, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Popular',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Image.asset('assets/icon.png'),
                SizedBox(width: 5),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            decoration: DottedDecoration(
              color: const Color.fromRGBO(201, 204, 207, 1),
              strokeWidth: 1,
              shape: Shape.line
            )
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categories,
                  style: const TextStyle(fontSize: 14, color: Color.fromRGBO(99, 24, 175, 1), fontWeight: FontWeight.w400),
                ),
                
                Text('See all', style: TextStyle(color: Color.fromRGBO(96, 102, 108, 1,), fontSize: 14, fontWeight: FontWeight.w400))
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: DottedDecoration(
              color: const Color.fromRGBO(201, 204, 207, 1),
              strokeWidth: 1,
              shape: Shape.line
            )
          ),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  'Starts at ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(96, 102, 108, 1),
                  ),
                ),
                Text(
                  '₹299',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(Icons.person, color: Color.fromRGBO(102, 102, 102, 1), size: 15),
                Text(
                  '10 - 600',
                  style: TextStyle(fontSize: 14, color: Color.fromRGBO(102, 102, 102, 1)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(Icons.star, color: Color.fromRGBO(236, 204, 123, 1), size: 18),
                Text(
                  ' ₹219',
                  style: TextStyle(fontSize: 18, color: Color.fromRGBO(99, 24, 175, 1), fontWeight: FontWeight.w400),
                ),
                Text('/Person', style: TextStyle(color: Color.fromRGBO(71, 71, 71, 1), fontSize: 15, fontWeight: FontWeight.w400)),
                Icon(Icons.arrow_downward_outlined,  color: Colors.green, size: 16),
                Text('20%', style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    'with Dynamic Price for',
                    style: TextStyle(fontSize: 14, color: Color.fromRGBO(99, 24, 175, 1)),
                  ),
                  Text("100 Guests")
                ],
              ),
            ),
        ],
      ),
    );
  }
}