import 'package:bloc/model/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),

            //good morning
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
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

            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Divider(),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Fresh Items',
                style: TextStyle(fontSize: 15),
              ),
            ),

            Expanded(
                child: Consumer<CartItemModel>(

                  builder: (context,value,child){

                    return    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemCount: value.shopItems.length,
                      itemBuilder: (context,index){
                        return GroceryItemTile(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],


                        );
                
                      });

                  },
                  


                
                ))
          ],
        ),
      ),
    );
  }
}
