import 'package:flutter/material.dart';

class CartDetailsAppBar extends StatelessWidget {
  const CartDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF475269),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF475269)),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,color: Color(0xFF475269),)
        ],
      ),
    );
  }
}
