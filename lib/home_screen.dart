import 'package:craft_my_plate/custom_bottomNavBar.dart';
import 'package:craft_my_plate/delivery_menu_card.dart';
import 'package:craft_my_plate/meal_menu_card.dart';
import 'package:craft_my_plate/meal_option_card.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: SafeArea(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hi, Monica!',
                    style: TextStyle(
                      color: Color.fromRGBO(99, 24, 175, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 28
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Current location',
                            style: TextStyle(
                              color: Color.fromRGBO(123, 123, 123, 1),
                              fontWeight: FontWeight.w200,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined, color: Color.fromRGBO(99, 24, 175, 1), size: 22,),
                              Text('Hyderabad',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(170, 170, 170, 1), size: 24,),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Icon(Icons.play_circle_outline, color: Color.fromRGBO(127, 31, 224, 1), size: 22),
                          Text('How it works?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  //promo banner section
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(99, 24, 175, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                              'Enjoy your first\norder, the taste of\nour delicious food!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: DottedDecoration(
                                  color: const Color.fromRGBO(123, 123, 123, 1),
                                  strokeWidth: 1,
                                  shape: Shape.box,
                                ),
                                height: 33,
                                width: 138,
                                child: const Center(
                                  child: Text(
                                    'FIRSTPLATE01',
                                    style: TextStyle(
                                      color: Color.fromRGBO(246, 215, 152, 1),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Stack(
                            children: [
                              Image.asset('assets/pic_1.png', height: 130),
                              Positioned(
                                top: 20,
                                right: 100,
                                child: Image.asset('assets/Vector.png', height: 45),
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ),
        
                  // Start crafting section
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Start Crafting',
                      style: TextStyle(
                        color: Color.fromRGBO(36, 38, 40, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
        
                  //delivery card
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(251, 247, 254, 1),
                          Color.fromRGBO(216, 185, 143, 1),
                        ],
                      stops: [0, 1.0],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 15, bottom: 15),
                          child: Column(
                            children: [
                              const Text(
                                'Delivery Box',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Row(
                                children: [
                                  Icon(Icons.person, color: Color.fromRGBO(147, 90, 16, 1), size: 14),
                                  Text(
                                      'Min 10 - Max 120',
                                      style: TextStyle(color: Color.fromRGBO(147, 90, 16, 1), fontSize: 12),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 32,
                                width: 96,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(221, 142, 24, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('See All', style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 6),
                                    Icon(Icons.arrow_forward, color: Colors.white, size: 15),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset("assets/pic_2.png", height: 200),
                      ]
                    )
                  ),
                  const SizedBox(height: 25),
        
                  // "Meal Boxes" and "Catering" Section
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        BuildMealOptionCard(
                          title: 'Meal Boxes',
                          iconColor: Color.fromRGBO(99, 24, 175, 1),
                          subtitle: 'Min 10 Guests',
                          subtitleColor: Color.fromRGBO(99, 24, 175, 1),
                          imagePath: 'assets/meal_box_image.png',
                          bgColor: Color.fromRGBO(99, 24, 175, 1),
                        ),
                        SizedBox(width: 25),
                        BuildMealOptionCard(
                          title: 'Catering',
                          iconColor: Color.fromRGBO(194, 0, 94, 1),
                          subtitle: 'Min 120 Guests',
                          subtitleColor: Color.fromRGBO(194, 0, 94, 1),
                          imagePath: 'assets/catering_image.png',
                          bgColor: Color.fromRGBO(194, 0, 94, 1),
                        ),
                        SizedBox(width: 30),
                        BuildMealOptionCard(
                          title: 'Meal Boxes',
                          iconColor: Color.fromRGBO(99, 24, 175, 1),
                          subtitle: 'Min 10 Guests',
                          subtitleColor: Color.fromRGBO(99, 24, 175, 1),
                          imagePath: 'assets/meal_box_image.png',
                          bgColor: Color.fromRGBO(99, 24, 175, 1),
                        ),
                        SizedBox(width: 30),
                        BuildMealOptionCard(
                          title: 'Catering',
                          iconColor: Color.fromRGBO(194, 0, 94, 1),
                          subtitle: 'Min 120 Guests',
                          subtitleColor: Color.fromRGBO(194, 0, 94, 1),
                          imagePath: 'assets/catering_image.png',
                          bgColor: Color.fromRGBO(194, 0, 94, 1),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
        
                  // "Choose Your Platter" Section
                  const Text(
                    'Choose Your Platter',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromRGBO(36, 38, 40, 1),
                    ),
                  ),
                  const SizedBox(height: 15),
        
                  //Delivery Box Section
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children: [
                          Text(
                            'Delivery Box ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(99, 24, 175, 1),
                            ),
                          ),
                          Text('(', style: TextStyle(color: Color.fromRGBO(113, 113, 113, 1)),),
                          Icon(Icons.person, color: Color.fromRGBO(113, 113, 113, 1), size: 15),
                          Text(
                            'Min 10-Max 50)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(113, 113, 113, 1),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Color.fromRGBO(72, 76, 81, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Best for small gatherings and house-parties',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(147, 152, 159, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
        
                  //menu card
                  SizedBox(
                    height: 290,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        BuildMenuCard(
                          title: 'Panjabi Special Menu',
                          categories: '6 Categories & 9 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Another Menu',
                          categories: '4 Categories & 6 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Panjabi Special Menu',
                          categories: '6 Categories & 9 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Another Menu',
                          categories: '4 Categories & 6 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(height: 20),
        
                  //meal box
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children: [
                          Text(
                            'Meal Box ',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(99, 24, 175, 1),
                            ),
                          ),
                          Text('(', style: TextStyle(color: Color.fromRGBO(113, 113, 113, 1)),),
                          Icon(Icons.person, color: Color.fromRGBO(113, 113, 113, 1), size: 15),
                          Text(
                            'Min 10)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(113, 113, 113, 1),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Color.fromRGBO(72, 76, 81, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Individually packed meal boxes of happiness!',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(147, 152, 159, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MealMenuCard(
                          itemCount: '3',
                          imagePath: 'assets/meal_menu_box.png',
                          backgroundColor: Color(0xFFF7C8E0),
                        ),
                        MealMenuCard(
                          itemCount: '5',
                          imagePath: 'assets/meal_box_image.png',
                          backgroundColor: Color(0xFFE0BBF7),
                        ),
                        MealMenuCard(
                          itemCount: '3',
                          imagePath: 'assets/meal_menu_box.png',
                          backgroundColor: Color(0xFFF7C8E0),
                        ),
                        MealMenuCard(
                          itemCount: '5',
                          imagePath: 'assets/meal_box_image.png',
                          backgroundColor: Color(0xFFE0BBF7),
                        ),
                      ]
                    )
                  ),
                  const SizedBox(height: 20),
                  
                  //catering menu
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children: [
                          Text(
                            'Catering Menu ',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(99, 24, 175, 1),
                            ),
                          ),
                          Text('(', style: TextStyle(color: Color.fromRGBO(113, 113, 113, 1)),),
                          Icon(Icons.person, color: Color.fromRGBO(113, 113, 113, 1), size: 15),
                          Text(
                            'Min 200)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(113, 113, 113, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Best for weddings, Corporate Events, Birthdays etc',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(147, 152, 159, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 290,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        BuildMenuCard(
                          title: 'Panjabi Special Menu',
                          categories: '12 Categories & 40 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Another Menu',
                          categories: '4 Categories & 6 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Panjabi Special Menu',
                          categories: '12 Categories & 40 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                        BuildMenuCard(
                          title: 'Another Menu',
                          categories: '4 Categories & 6 Items',
                          imagePath: 'assets/punjabi_menu.png',
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Center(
                    child: Text(
                      'You Customize, We Cater!',
                      style: TextStyle(
                        color: Color.fromRGBO(201, 204, 207, 1)
                      )
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: MediaQuery.of(context).size.width * 0.1,
          child: const CustomBottomNavBar()
        ),
        ]
      ),
    );
  }
}