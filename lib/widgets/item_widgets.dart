import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.72,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for(int i=1; i<5; i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 7),
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5
              )
            ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("assets/images/$i.png",height: 100,width: 100,fit: BoxFit.cover,),
                ),
              ),
              /*SizedBox(height: 20,),
              Text("Product Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
              SizedBox(height: 5,),
              Text("Description here",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.indigo),)*/
              Padding(padding: EdgeInsets.only(bottom: 6),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Product Title",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black54),),
              ),),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Write description of product",style: TextStyle(fontSize: 15,color: Colors.black54),),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Text("\$50",style: TextStyle(color: Colors.redAccent,fontSize: 18),),
                  Icon(CupertinoIcons.cart_badge_plus,color: Color(0xFF475269),)

                ],
              ),)
            ],
          ),

        )
      ],
    );
  }
}
