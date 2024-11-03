import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'dashboard.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    //String date = DateFormat('MMM d, yyyy').format(DateTime.now());
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/analytics.png', 
              fit: BoxFit.cover,
            ),
          ),
          // Text(
          //   date,
          //   style: TextStyle(
          //     fontFamily: 'Jersey10',
          //     fontSize: 10,
          //     color: Colors.white,
          //     shadows: [
          //       Shadow(
          //         offset: Offset(2.0, 2.0),
          //         blurRadius: 3.0,
          //         color: Color.fromARGB(0, 255, 255, 255),
          //       ),
          //     ],
          //   ),
          // ),
          Builder(
            builder: (context) {
              final screenSize = MediaQuery.of(context).size;
              final buttonWidth = screenSize.width * 0.25;
              final buttonHeight = screenSize.height * 0.20;

              return Positioned(
                left: screenSize.width * 0.80, //position the button
                top: screenSize.height * 0.85,  //position the button
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