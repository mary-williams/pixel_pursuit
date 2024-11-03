import 'package:flutter/material.dart';
import 'analytics.dart';
import 'cashout.dart';
import 'competition.dart';
import 'break.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/dashboard.png',
              fit: BoxFit.cover,
            ),
          ),
          Builder(
              builder: (context) {
                // Get screen size
                final screenSize = MediaQuery.of(context).size;
                // Set button size as a fraction of screen size
                final buttonWidth = screenSize.width * 0.077;
                final buttonHeight = screenSize.height * 0.04;

                return Positioned(
                  left: screenSize.width * 0.16, //position the button
                  top: screenSize.height * 0.67,  //position the button
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Analytics()),
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
            // Button area for competition
            Builder(
              builder: (context) {
                // Get screen size
                final screenSize = MediaQuery.of(context).size;
                // Set button size as a fraction of screen size
                final buttonWidth = screenSize.width * 0.077;
                final buttonHeight = screenSize.height * 0.04;

                return Positioned(
                  left: screenSize.width * 0.275, //position the button
                  top: screenSize.height * 0.67,  //position the button
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to compeition
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Break()),
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
            Builder(
              builder: (context) {
                // Get screen size
                final screenSize = MediaQuery.of(context).size;
                // Set button size as a fraction of screen size
                final buttonWidth = screenSize.width * 0.077;
                final buttonHeight = screenSize.height * 0.04;

                return Positioned(
                  left: screenSize.width * 0.4, //position the button
                  top: screenSize.height * 0.67,  //position the button
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to compeition
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Competition()),
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
            Builder(
            builder: (context) {
              // Get screen size
              final screenSize = MediaQuery.of(context).size;
              // Set button size as a fraction of screen size
              final buttonWidth = screenSize.width * 0.077;
              final buttonHeight = screenSize.height * 0.04;

              return Positioned(
                left: screenSize.width * 0.52, // Position the button
                top: screenSize.height * 0.67,  // Position the button
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => Cashout(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
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
    );
  }
}