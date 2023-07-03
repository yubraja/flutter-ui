import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),

            //good morning
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Good Morning'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "let's order fresh items for you",
                style: GoogleFonts.notoSerif(
                    fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 4,
            )
          ],
        ),
      ),
    );
  }
}
