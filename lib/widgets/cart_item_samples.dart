import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget{
  const CartItemSamples({super.key});


  @override
  Widget build(BuildContext context){
    return Column(
        children: [
          for(int i=1; i<4; i++)
            Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Radio(value: "", groupValue: "", onChanged: (index){}),
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/$i.png"),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Product Title",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                      Text("\$33",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.redAccent),)
                    ],
                  ),
                  ),
                  Spacer(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      Icon(Icons.delete,color: Colors.red,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0,3)
                                )
                              ]
                            ),
                            child: Icon(CupertinoIcons.minus,size: 20,color: Color(0xFF475269),),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            child: Text("02",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(0,3)
                                  )
                                ]
                            ),
                            child: Icon(CupertinoIcons.plus,size: 20,color: Color(0xFF475269),),

                          )
                        ],
                      )
                    ],
                  ),)
                ],
              ),
            ),

        ],
    );
  }
}