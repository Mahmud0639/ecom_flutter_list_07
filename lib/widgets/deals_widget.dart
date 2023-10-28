import 'package:flutter/material.dart';

class DealsWidget extends StatelessWidget{
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1; i<4; i++)
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Image.asset("assets/images/deal$i.jpg",width: 280,height: 180,fit: BoxFit.cover,),
            )
        ],
      ),
    );
  }

}