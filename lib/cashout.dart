import 'package:flutter/material.dart';

class Cashout extends StatelessWidget {
  const Cashout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to cashout!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}