import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //image added
          Padding(
            padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
            child: Image.asset('lib/images/avocado.png'),
          ),
          //we deliver grocries

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              style: GoogleFonts.notoSerif(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                
              ),
              textAlign: TextAlign.center,
            ),
          ),

//fresh items everyday

          Text(
            'Fresh items everyday',
          ),
          Spacer(),


          GestureDetector(
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
             return  HomePage();

            }
            )),
            child: Container(
              padding: EdgeInsets.all(14),
              child: Text('Get Started'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.purple,
              ),
            ),
          ),


          Spacer(),
        ],
      ),
    );
  }
}
