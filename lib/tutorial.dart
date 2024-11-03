import 'package:flutter/material.dart';
import 'finish_tut.dart';

void main() {
  runApp(const Tutorial());
}

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _backgroundIndex = 0;
  final List<String> _backgroundImages = [
    'assets/analytics_tut.png',
    'assets/break_tut.png',
    'assets/competition_tut.png',
    'assets/cashout_tut.png',
    'assets/go_back_tut.png',
    'assets/finish_tut.png',
  ];

  void _nextBackground() {
    setState(() {
      _backgroundIndex = (_backgroundIndex + 1) % _backgroundImages.length;
      if (_backgroundIndex == 5) { // Change this condition as needed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FinishTut()),
        );
      }
    });
  }

  void _previousBackground() {
    setState(() {
      _backgroundIndex = (_backgroundIndex - 1 + _backgroundImages.length) % _backgroundImages.length;
      if (_backgroundIndex != 0){
        if (_backgroundIndex == 3) { // Change this condition as needed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tutorial()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              _backgroundImages[_backgroundIndex],
              fit: BoxFit.cover,
            ),
          ),
          Builder(
            builder: (context) {
              final screenSize = MediaQuery.of(context).size;
              final buttonWidth = screenSize.width * 0.30;
              final buttonHeight = screenSize.height * 0.30;

              return Positioned(
                left: screenSize.width * 0.06,
                top: screenSize.height * 0.4,
                child: GestureDetector(
                  onTap: _previousBackground,
                  child: Container(
                    width: buttonWidth,
                    height: buttonHeight,
                    color: Colors.transparent,
                  ),
                ),
              );
            },
          ),
          // Button area for break layout
          Builder(
            builder: (context) {
              final screenSize = MediaQuery.of(context).size;
              final buttonWidth = screenSize.width * 0.30;
              final buttonHeight = screenSize.height * 0.30;

              return Positioned(
                left: screenSize.width * 0.66, 
                top: screenSize.height * 0.4, 
                child: GestureDetector(
                  onTap: _nextBackground,
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