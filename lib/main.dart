import 'package:ecommerce_app_ui/Cart.dart';
import 'package:ecommerce_app_ui/Pages/Home_Page.dart';

import 'package:ecommerce_app_ui/Pages/intro_page.dart';
import 'package:ecommerce_app_ui/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
     home: const IntroPage(),
   

      routes: {
        '/login':(context)=>const LoginPage(),
       
        '/Home':(context)=> HomePage(),
        '/intro':(context)=>IntroPage()
      },
    ),
     );
  }
}
