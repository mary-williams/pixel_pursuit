import 'package:flutter/material.dart';
import 'tutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/tutorial.png',
                fit: BoxFit.cover, // Adjusts the image to cover the entire screen
              ),
            ),
            // Text slightly below center
            Align(
              alignment: Alignment(0.0, 0.05), // Adjust this value to position the text slightly below center
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'PRESS HERE TO',
                    style: TextStyle(
                      fontFamily: 'Jersey10',
                      fontSize: 18,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'START',
                    style: TextStyle(
                      fontFamily: 'Jersey10',
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Button area for Dashboard
            Builder(
              builder: (context) {
                // Get screen size
                final screenSize = MediaQuery.of(context).size;
                // Set button size as a fraction of screen size
                final buttonWidth = screenSize.width * 0.65;
                final buttonHeight = screenSize.height * 0.25;

                return Positioned(
                  left: screenSize.width * 0.16,
                  top: screenSize.height * 0.4, 
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the Dashboard screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tutorial()),
                      );
                    },
                    child: Container(
                      width: buttonWidth,
                      height: buttonHeight,
                      color: Colors.transparent,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}