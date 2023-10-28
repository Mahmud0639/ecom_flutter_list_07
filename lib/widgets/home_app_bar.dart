import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  const HomeAppBar({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        children: [
          Icon(Icons.sort,color: Color(0xFF475269),),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("eCommerce",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFF475269)),),),
          Spacer(),
          Icon(Icons.notifications,color: Color(0xFF475269),)
        ],
      ),
    );
  }
}