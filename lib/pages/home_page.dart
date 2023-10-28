import 'package:flutter/material.dart';

import '../widgets/deals_widget.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_bottom_bar.dart';
import '../widgets/item_widgets.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2)
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        //color: Colors.red,
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 270,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here..."
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt,color: Color(0xFF475269),)
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15,left: 10),
                  child: Text("Best Deals",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                ),
                DealsWidget(),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Newest Products",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                ),
                ItemsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}