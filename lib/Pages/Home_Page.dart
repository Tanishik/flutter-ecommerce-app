import 'package:ecommerce_app_ui/Pages/Cart_page.dart';
import 'package:ecommerce_app_ui/Pages/profile_page.dart';
import 'package:ecommerce_app_ui/Pages/shop_page.dart';
import 'package:ecommerce_app_ui/components/botton_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //selected index
  int _selectedIndex =0;



  //method to update the selected inlex

  void navigatebottombar (int index){
    setState(() {
      _selectedIndex =index;
    });
  }

  


   final List<Widget> _pages = [
    
    const ShopPage(),

    const CartPage(),

    const ProfilePage()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],

    
      

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton( icon: Icon(Icons.menu,color: Colors.grey.shade700,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              
            },
            );
          }
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

       Column(
        
        children: [
           DrawerHeader(child: Image.asset('lib/images/pngimg.com - nike_PNG18.png',color: Colors.white,)),

       

             Padding(
            padding: const EdgeInsetsGeometry.only(left: 25.0),
            child: GestureDetector(
            
              child: ListTile(
                leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("SETTINGS",style: TextStyle(color: Colors.white),),),
            ),
          ),

            Padding(
            padding: const EdgeInsetsGeometry.only(left: 25.0),
            child: GestureDetector(
            
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
              title: Text("ABOUT",style: TextStyle(color: Colors.white),),),
            ),
          ),
          const SizedBox(height: 350)

       ],),
          
          



          



        ],),
      ),

      

         bottomNavigationBar:  Container(
          
     

          height: 70,
          
         
           child: Row(

            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               MyBottonNavBar(
                onTabChange: (index) => navigatebottombar(index) ,
                       ),
             ],
           ),
         ),
      
     

      body: _pages[_selectedIndex],
    );
  }
}