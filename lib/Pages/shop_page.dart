import 'package:ecommerce_app_ui/Cart.dart';
import 'package:ecommerce_app_ui/Models/shoe.dart';
import 'package:ecommerce_app_ui/components/Shoe_Tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

     showDialog(context: context, builder: (context) => AlertDialog(
      backgroundColor: Colors.grey.shade900,
            title: Text('Successfully addded !',style: TextStyle(color: Colors.white),),
            content: Row(
              children: [
                Text('Check your cart',style: TextStyle(color: Colors.white),),
                const SizedBox(width: 5,),
                Icon(Icons.shopping_bag,color: Colors.white,),
              ],
            ),
     ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) =>  Column(
        
         
        children: [
           //search bar
            
            
        
           
           Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text("Search",style: TextStyle(color: Colors.grey,fontSize: 20),),
                Icon(Icons.search,color: Colors.grey,size: 30,)
              ],
      
              
            ),),
            
      
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text("everyone flies... some fly longer than others",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),),
        ),
      
        //hot picks
      
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text('See All',style: TextStyle(color: Colors.blue),),
            ],
          ),
        ),
      
        const SizedBox(height: 10,),
      
       Expanded(child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,index){
        
           Shoe shoe =value.getShoeList()[index]; 
         return ShoeTile(
          onTap: () => addShoeToCart(shoe),
          shoe:shoe,
          
         );
        },),),
      
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Divider(color: Colors.transparent,),

         
        )
      
        ],
       
      ),
    );
  }
}