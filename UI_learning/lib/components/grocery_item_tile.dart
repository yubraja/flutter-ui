import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String imagePath;
  final color;

  GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),

        //image
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(
            imagePath,
            height: 70,
          ),
          Text(itemName),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Rs ' + itemPrice.toString(),
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: color[800],
          )
        ]),
      ),
    );
  }
}
