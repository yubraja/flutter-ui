import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
            child: Image.asset('lib/images/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                
              ),
              textAlign: TextAlign.center,
            ),
          ),



      
        ],
      ),
    );
  }
}
