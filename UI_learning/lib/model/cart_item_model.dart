import 'package:flutter/material.dart';

class CartItemModel extends ChangeNotifier{

    //list of items on sale
    final List _shopItems=
    [
      //[itemName,itemPrice,imagePath,color]
      ["Avocado",300.0,'lib/images/avocado.png',Colors.green],
      ["Banana",150.0,'lib/images/banana.png',Colors.yellow],
      ["chicken",450.0,'lib/images/chicken.png',Colors.grey],
      ["Water",28.5,'lib/images/water.png',Colors.blue],


    ];

    List get shopItems{
      return _shopItems;
    }
}
