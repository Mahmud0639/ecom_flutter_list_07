import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/cart_app_bar.dart';
import '../widgets/cart_bottom_bar.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          CartAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("assets/images/1.png",height: 220,),),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product Title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                      Icon(Icons.favorite,color: Colors.redAccent,),
                      

                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(itemBuilder: (context,index)=>Icon(Icons.star,color: Colors.red,),initialRating: 4,minRating: 1,direction: Axis.horizontal,allowHalfRating: true,itemCount: 5, itemPadding: EdgeInsets.symmetric(horizontal: 4),itemSize: 18,onRatingUpdate: (rating){}),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0,3)
                                  )
                                ]
                              ),
                              child: Icon(CupertinoIcons.minus,size: 24,color: Color(0xFF475269),),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Text("1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0,3)
                                  )
                                ]
                              ),
                              child: Icon(CupertinoIcons.plus,size: 24,color: Color(0xFF475269),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("This is more lengthy descriopton of the product.You can add more and more as your wish.So this is till now the end text.Please note down that it will go down after some moment.",textAlign: TextAlign.justify,style: TextStyle(fontSize: 16,color: Color(0xFF475269)),),)

                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNav(),
    );
  }
}