import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget{
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Color(0xFFFF7466),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
              child: Icon(CupertinoIcons.home,color: Colors.white,)),
          Icon(Icons.person,color: Colors.white,),
          Icon(Icons.favorite,color: Colors.white,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartDetails");
              },
              child: Icon(CupertinoIcons.cart_fill,color: Colors.white,))
        ],
      ),
    );
  }
}