 import 'package:ecommerce_app_ui/Models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {

  List<Shoe> shoeShop = [
    Shoe(name: 'Air Jordan Low(SE)',
     description: 'built for the court,styled for the street ',
      imagePath: 'lib/images/AIR+JORDAN+1+LOW+SE.png', 
      price: '₹70,000'),

      Shoe(name: "Air Jordan Mid(SE)",
       description: 'iconic jumps,timeless drip',
      imagePath: 'lib/images/AIR+JORDAN+1+MID.png',
       price: '₹99,999'),

       Shoe(name: 'Air Jordan Retro(GS)',
        description: 'where legacy meets everyday flex', 
        imagePath: 'lib/images/AIR+JORDAN+1+RETRO+LOW+OG+(GS).png',
         price: '₹1,20,000'),

         Shoe(name: 'Air Jordan Retro(GS)',
          description: 'not just shows-a statement',
          imagePath: 'lib/images/AIR+JORDAN+3+RETRO+(GS).png',
           price: '₹1,50,000'),

             Shoe(name: 'Air Jordan Low',
          description: 'Steet-ready style with a fearless pink vibe',
          imagePath: 'lib/images/WMNS+AIR+JORDAN+1+LOW.png',
           price: '₹99,000'),

           



  ];

  //List of items in user cart
  List<Shoe> userCart = [];

  //shoe for sale 

  List<Shoe> getShoeList (){
    return shoeShop;
  }

  //get user cart

  List<Shoe> getUserCart (){
    return userCart;
  }

   //add item to cart 

   void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();

    //remove item from cart

      // ignore: unused_element
      void removefromcart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();


  }}

  void removefromcart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();

  }

 }