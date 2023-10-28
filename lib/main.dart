import 'package:ecom_flutter_list_07/pages/cart_details_page.dart';
import 'package:ecom_flutter_list_07/pages/cart_page.dart';
import 'package:ecom_flutter_list_07/pages/home_page.dart';
import 'package:ecom_flutter_list_07/pages/product_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/":(context)=>HomePage(),
        "productName":(context)=>ProductPage(),
        "cartPage":(context)=>CartPage(),
        "cartDetails":(context)=>CartDetailsPage()
      },
    );
  }
}