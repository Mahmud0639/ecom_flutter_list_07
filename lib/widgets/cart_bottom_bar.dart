import 'package:flutter/material.dart';

class CartBottomNav extends StatelessWidget {
  const CartBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.indigo.withOpacity(0.5),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$85",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFFF7466)),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13,horizontal: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
              ),
              icon: Icon(Icons.shopping_cart),
              label: Text(
                "Add To Cart",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
