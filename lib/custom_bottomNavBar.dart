import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
          height: 65, 
          width: screenWidth * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15), // Curved edges
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 15,
                offset: const Offset(0, 3), // Shadow positioning
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Profile Button
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 30, color: Color.fromRGBO(96, 102, 108, 1)),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 12, color: Color.fromRGBO(96, 102, 108, 1)),
                    ),
                  ],
                ),
                //logo section
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 183, 12, 1),
                      borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Container(
                      height: 58,
                      width: 58,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(99, 24, 175, 1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/Logo.png'),
                    ),
                  ),
                ),
                // Orders Button
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restaurant_menu, size: 30, color: Color.fromRGBO(96, 102, 108, 1) ),
                    Text(
                      'Orders',
                      style: TextStyle(fontSize: 12, color: Color.fromRGBO(96, 102, 108, 1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
      );
  }
}