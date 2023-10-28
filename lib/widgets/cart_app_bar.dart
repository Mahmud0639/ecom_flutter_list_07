import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(
            Icons.arrow_back,
            color: Color(0xFF475269),
          )),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Product",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),),
          Spacer(),
          Icon(CupertinoIcons.cart_fill,color: Color(0xFF475269),)
        ],
      ),
    );
  }
}
