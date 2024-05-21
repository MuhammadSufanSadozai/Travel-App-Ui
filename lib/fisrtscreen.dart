import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/secondscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/explore2.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.15,
            right: screenWidth * 0.15,
            top: screenHeight * 0.05,
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  Text(
                    'Travel',
                    style: TextStyle(
                      fontFamily: 'Merienda',
                      fontSize: screenHeight * 0.07,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'before you run out of time',
                    style: TextStyle(
                      fontFamily: 'Merienda',
                      fontSize: screenHeight * 0.02,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.4),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(screenHeight * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white, width: 1.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.15,
                        vertical: screenHeight * 0.015,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_forward, color: Colors.white),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Let's Go",
                            style: TextStyle(
                              fontFamily: 'Merienda',
                              fontSize: screenHeight * 0.02,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Not all who wander are lost",
                      style: TextStyle(
                        fontFamily: 'Merienda',
                        fontSize: screenHeight * 0.02,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}