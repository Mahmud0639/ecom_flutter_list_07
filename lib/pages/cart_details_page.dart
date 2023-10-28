import 'package:ecom_flutter_list_07/widgets/cart_app_bar.dart';
import 'package:ecom_flutter_list_07/widgets/cart_bottom_bar.dart';
import 'package:ecom_flutter_list_07/widgets/home_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/cart_details_app_bar.dart';
import '../widgets/cart_item_samples.dart';
import '../widgets/order_widget.dart';

class CartDetailsPage extends StatelessWidget{
  const CartDetailsPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          CartDetailsAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2)
            ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub-Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                          Text("\$100",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),


                        ],
                      ),

                      Divider(color: Colors.grey,height: 30,thickness: 0.3,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Delivery-Fee",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                          Text("\$50",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),

                        ],
                      ),

                      Divider(height: 30,thickness: 0.3,color: Color(0xFF475269),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Discount",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                          Text("-\$20",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),

                        ],
                      ),
                      Divider(height: 30,thickness: 0.3,color: Color(0xFF475269),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                          Text("\$130",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),),

                        ],
                      )

                    ],
                  ),
                ),
                OrderWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}