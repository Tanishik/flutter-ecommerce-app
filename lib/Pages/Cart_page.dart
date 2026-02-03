import 'package:ecommerce_app_ui/Cart.dart';
import 'package:ecommerce_app_ui/Models/shoe.dart';
import 'package:ecommerce_app_ui/components/Cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) =>
     Column
     (crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text('My Cart',style: 
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.grey.shade700,
          ),),
        ),

        const SizedBox(height: 20,),

        Expanded(child: ListView.builder(
          itemCount: value.getUserCart().length,
          itemBuilder: (context,index) {

          Shoe individualShoe = value.getUserCart()[index];

          return CartItem(shoe: individualShoe,);


        } ))
      ],
    ));
}
}