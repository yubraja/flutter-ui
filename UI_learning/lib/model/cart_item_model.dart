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

    //list of cart items
    List _cartItems=[];

    List get cartItems=>_cartItems;

    //add item to cart 

    void addItemToCart(int index,BuildContext context){
      _cartItems.add(_shopItems[index]);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item ${_shopItems[index][0]} is added to cart!')));
      notifyListeners();
    }



    //remove item from cart
    void removeItemFromCart(int index){
      _cartItems.removeAt(index);
      notifyListeners();
    }



    //calculate total price

    String calculateTotal(){
      double totalPrice=0;
      for(int i=0;i<_cartItems.length;i++){
        totalPrice+=_cartItems[i][1];
      }
      return totalPrice.toStringAsFixed(2);
    }

    void purchaseAll(){
      _cartItems=[];
      notifyListeners();
    }
}
