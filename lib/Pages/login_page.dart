import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
     
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.login,size: 35,),
            ),
          )),

          const SizedBox(height: 16,),
          Text('sign in with email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),

          
          Text(
            textAlign: TextAlign.center,
            'sign in to explore premium sneakers made for everyday style',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
          
          
            Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.only(top: 12,bottom: 12),
          decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(10)),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
               Padding(
                 padding: const EdgeInsets.only(right: 15.0,left: 20.0),
                 child: Icon(Icons.email,color: Colors.grey,size: 30,),
               ),
              Text("Email",style: TextStyle(color: Colors.grey,fontSize: 20),),
             
            ],

            

            
          ),),

          const SizedBox(height: 10,),

            Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.only(top: 12,bottom: 12),
          decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(10)),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
               Padding(
                 padding: const EdgeInsets.only(right: 15.0,left: 20.0),
                 child: Icon(Icons.lock,color: Colors.grey,size: 30,),
                 
               ),
              Text("password",style: TextStyle(color: Colors.grey,fontSize: 20),),

             
               Expanded(child:
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Icon(Icons.visibility_off,color: Colors.grey,),
                    ),
                  ],
                )),
            
             
            ],

            

            
          ),),

        const SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 235),
            child: Text(
              textAlign: TextAlign.end,
              'forgot password? ',style: TextStyle(color: Colors.grey.shade900),),
          ),

             const SizedBox(height: 10,),
           
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Home');
                      },
                      child: Container(
                        
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 25),
                      
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      
                               ),),
                    ),
                  ),
                ],
              ),

               const SizedBox(height: 25,),

              Text('or login with',style: TextStyle(color: Colors.grey),),

               const SizedBox(height: 50,),
           
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('lib/images/Apple logo.png',height: 27,),
                            )),
                          
                          Container(
                             decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('lib/images/Google logo.png',height: 27,),
                            )),

                          
                          Container(
                             decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('lib/images/Facebook logo.png',height: 27,),
                            )),



                          
                        ],
                      ),

        ],),
      ),
    );
  }
}