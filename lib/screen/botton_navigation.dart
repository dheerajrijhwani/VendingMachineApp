import 'package:flutter/material.dart';
import 'package:vending_machine/screen/profile_content.dart';
import 'package:vending_machine/screen/settings.dart';
import 'package:vending_machine/widgets/apptheme.dart';

import 'dashboard.dart';
import 'favorite.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
   var navscreen =[DashBoard(),Settings(),HomeScreen(),ProfileContent()];
  int selectedItem = 0;
class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:navscreen[selectedItem] ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedItem,
        onTap: (setvalue){
          setState(() {
            selectedItem=setvalue;
          });
        },
     //   showSelectedLabels: false,
        selectedItemColor: AppthemeData.themeColor,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey),activeIcon: Icon(Icons.home_outlined,),
              label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.grey),activeIcon: Icon(Icons.shopping_cart_outlined,),
              label:"cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.grey),activeIcon: Icon(Icons.favorite_border,),
              label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity,color: Colors.grey,),activeIcon: Icon(Icons.perm_identity,),
              label: "person"),


        ],

      ),
    );
  }
}



