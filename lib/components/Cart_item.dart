import 'package:ecommerce_app_ui/Cart.dart';
import 'package:ecommerce_app_ui/Models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key,required this.shoe});


  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeFromeCart(){
    Provider.of<Cart>( context, listen: false).removefromcart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10,left: 20,right: 20),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton( icon: Icon(Icons.delete,),
        onPressed: removeFromeCart,),
      ),
    );
  }
}