import 'package:bloc/model/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        
        leading: IconButton(onPressed: (){
           return Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        
      ),
      body: Consumer<CartItemModel>(
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Cart',
                style: GoogleFonts.notoSerif(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              value.cartItems.isEmpty?Text('Empty cart!!',style: TextStyle(fontSize: 24),):

              Expanded(
                  child: ListView.builder(
                      itemCount: value.cartItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(12)),

                                
                            child: ListTile(
                              leading: Image.asset(
                                value.cartItems[index][2],
                                height: 40,
                              ),
                              title: Text(value.cartItems[index][0]),
                              subtitle: Text(
                                  'Rs ' + value.cartItems[index][1].toString()),
                              trailing: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: () => Provider.of<CartItemModel>(
                                        context,
                                        listen: false)
                                    .removeItemFromCart(index),
                              ),
                            ),
                          ),
                        );
                      })),
                      
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(18),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Price:',
                            style: TextStyle(color: Colors.green[100]),
                          ),
                          Text(
                            'Rs ' + value.calculateTotal(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          value.purchaseAll(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Text(
                                'Pay Now!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
