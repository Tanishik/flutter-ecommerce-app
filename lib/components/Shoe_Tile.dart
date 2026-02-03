import 'package:ecommerce_app_ui/Models/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
   void Function()? onTap;
   ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Center(
      
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container( margin: EdgeInsets.only(left: 25),
                                width: 270,
                               
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                
                               
                               
                                  child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    //shoe pic
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(shoe.imagePath)),
                                  
                                 
                               
                                  
                                        SizedBox(height: 10,),
                                    
                                    //description
                                  
                                    Text(shoe.description,
                                    style: TextStyle(color: Colors.grey,),
                                    ),
                                  
                                    const SizedBox(height: 15,),
                                  
                                    //price + details
                                    Column(
                                      
                                      children: [
                                        
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                            
                                              //Shoe name
                                            
                                              Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                            
                                             
                                            
                                              //Shoe price
                                            
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Text(shoe.price,style: TextStyle(color: Colors.grey),),
                                              ),
                                                 // button to add to cart
                                            
                                               
                                            ],),
                                          ),
                                            GestureDetector(
                                              
                                              onTap: onTap,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(20),
                                                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))),
                                                    child: Icon(Icons.add,color: Colors.white,)),

                                                   
                                                ],
                                              ),
                                            ),
                                                
                                        ],),
                                      ],
                                    )
                                       
                                  ],),
                                ),
            ],
          ),
        ],
      ),
    );
      
    
      
    
      
      
    
    
  }
}
                      
                      
                    
                      
                     