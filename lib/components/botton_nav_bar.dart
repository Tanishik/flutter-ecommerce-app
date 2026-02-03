import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottonNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottonNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      GNav(
         color: Colors.grey[400],
         activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) =>  onTabChange!(value),
        tabs: [
       
        GButton(icon:
         Icons.sell,
        text: 'shop',),

          GButton(icon:
         Icons.shopping_bag_rounded,
        text: 'Cart',),

          GButton(icon:
         Icons.person,
        text: 'Profile',),

        

        


        
      ]),
      
    );}}