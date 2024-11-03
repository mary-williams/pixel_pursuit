import 'package:flutter/material.dart';
import 'tutorial.dart';
import 'dashboard.dart';

class FinishTut extends StatelessWidget {
  const FinishTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/finish_tut.png', 
              fit: BoxFit.cover, 
            ),
          ),
          Positioned(
            left: 35.0, 
            top: MediaQuery.of(context).size.height / 2 + 30, // Center vertically
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tutorial()),
                );
              },
              child: Container(
                width: 80.0,
                height: 40.0,
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            right: 40.0, 
            top: MediaQuery.of(context).size.height / 2 + 30, // Center vertically
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Container(
                width: 80.0,
                height: 40.0,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}