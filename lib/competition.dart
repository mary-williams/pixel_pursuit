import 'package:flutter/material.dart';
import 'dashboard.dart';

class Competition extends StatefulWidget {
  const Competition({super.key});

  @override
  _BreakState createState() => _BreakState();
}

class _BreakState extends State<Competition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/competition.png', 
              fit: BoxFit.cover,
            ),
          ),
          Builder(
              builder: (context) {
                final screenSize = MediaQuery.of(context).size;
                final buttonWidth = screenSize.width * 0.25;
                final buttonHeight = screenSize.height * 0.20;

                return Positioned(
                  left: screenSize.width * 0.80, 
                  top: screenSize.height * 0.85,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
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