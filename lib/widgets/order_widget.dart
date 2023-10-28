import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget{
  const OrderWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 40,left: 15),
          child: Text("Fill Order Details",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0,3)
              )
            ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Full Name",
              hintStyle: TextStyle(fontSize: 20)
            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Mobile Number",
                hintStyle: TextStyle(fontSize: 20)
            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0,3)
              )
            ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                hintStyle: TextStyle(fontSize: 20),

            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0,3)
                )
              ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Address",
                hintStyle: TextStyle(fontSize: 20)
            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0,3)
                )
              ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "City",
                hintStyle: TextStyle(fontSize: 20)
            ),
          ),
        ),
        Container(
          //margin: EdgeInsets.only(top: 20,left: 15),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0,3)
                )
              ]
          ),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Postal/Zip Code",
                hintStyle: TextStyle(fontSize: 20)
            ),
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){},
          child: Container(
            alignment: Alignment.center,
           // width: 330,
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFFF7466),
              borderRadius: BorderRadius.circular(10 )
            ),
            child: Text("Order Now",style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.white),),
          ),
        ),
        SizedBox(height: 40,)
      ],
    );
  }
}