import 'package:bloc/model/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './pages/intro_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 

    ChangeNotifierProvider(create: (context)=>  CartItemModel(),
    child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),   ),);
  }
}

