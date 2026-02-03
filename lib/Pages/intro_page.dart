import 'package:ecommerce_app_ui/Pages/Home_Page.dart';
import 'package:ecommerce_app_ui/Pages/login_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            //logo
          
            Image.asset('lib/images/pngimg.com - nike_PNG18.png',height: 240,),

            const SizedBox(height: 48,),
          
            //title

            Text("Just do it",
            style: 
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),

             const SizedBox(height: 48,),
          
          
            //sub title

              Text("Brand new sneakers and custom kicks made with premium quality.",
            style: 
            TextStyle(
             color: Colors.grey,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
            ),

             const SizedBox(height: 48,),
          
          
            //buttton

            
                GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
                      padding: const.all(25),
                      child: Center(child:
                       const Text("Shop now",
                       style:
                        TextStyle(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)),
                    ),
                  ),
                

                const SizedBox(height: 12,),

                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage(),)),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
                      padding: const.all(25),
                      child: Center(child:
                       const Text("login",
                       style:
                        TextStyle(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)),
                    ),
                                    ),
                  
              ],
            
          
          ),
        ),
      ),
    );
  }
}