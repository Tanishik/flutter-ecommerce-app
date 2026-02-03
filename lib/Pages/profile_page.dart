import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
    void _showDialog(){

    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.grey.shade900,
        title: Center(child: Text('Are you sure ?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white ),)),

        actions: [
          Center(

            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 MaterialButton(onPressed: (){
                  Navigator.pop(context);
                },
            child: Text('Cancel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),

          
            
             MaterialButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/login');
             },
            child: Text('logout',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),)
            
            ],),
          ),
        
        ],
      );
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        

        body: ListView(
          
        
        
      
        children: [
      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('My Profile',style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold,fontSize: 23),),
                ],
              ),
      
              const SizedBox(height: 30,),
      
      
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
      
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                borderRadius: BorderRadiusGeometry.circular(70),
             
                
                 ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person,color: Colors.grey,size: 70,),
                  
                )),
      
                  const SizedBox(width: 0,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      
                      textAlign: TextAlign.start,
                      'Guest_user_',style: TextStyle(color: Colors.grey.shade500,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(
                      '@Example.mail.com',style: TextStyle(color: Colors.grey.shade900,fontSize: 23,fontWeight: FontWeight.bold),),
      
                      
      
                   Container(
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 12),),
                    )),
      
                  ],
                ),
              ],
            ),
      
          
          
            ],
          ),
      
        
              const SizedBox(height: 60,),

               Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.person_2_outlined,),
                 const SizedBox(width: 30,),
                Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
           const SizedBox(height: 30,),
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.email_outlined,),
                 const SizedBox(width: 30,),
                Text("Linked Emails",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
          
           const SizedBox(height: 30,),
      
      
             Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.privacy_tip_outlined,),
                 const SizedBox(width: 30,),
                Text("Privacy Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),

            const SizedBox(height: 30,),
      
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.info_outline,),
                 const SizedBox(width: 30,),
                Text("Account Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
      
           const SizedBox(height: 10,),
      
           Divider(
            color: Colors.black,
            thickness: 1.0,
            indent: 16,
            endIndent: 16,
            height: 20,
          
           ),

           const SizedBox(height: 10,),

              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.shopping_bag_outlined,),
                 const SizedBox(width: 30,),
                Text("My Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
           const SizedBox(height: 30,),
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.history,),
                 const SizedBox(width: 30,),
                Text("Order History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
          
           const SizedBox(height: 30,),
      
      
             Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.favorite_border,),
                 const SizedBox(width: 30,),
                Text("Favourites",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),

            const SizedBox(height: 30,),
      
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.remove_red_eye_outlined,),
                 const SizedBox(width: 30,),
                Text("Recently Viewed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
      
           const SizedBox(height: 10,),
      
           Divider(
            color: Colors.black,
            thickness: 1.0,
            indent: 16,
            endIndent: 16,
            height: 20,
          
           ),

             const SizedBox(height: 10,),



              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.notifications_active_outlined,),
                 const SizedBox(width: 30,),
                Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
           const SizedBox(height: 30,),
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.wb_sunny_outlined,),
                 const SizedBox(width: 30,),
                Text("Theme",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),
      
          
           const SizedBox(height: 30,),
      
      
             Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.language_outlined,),
                 const SizedBox(width: 30,),
                Text("Language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),

            const SizedBox(height: 30,),
      
      
           
              Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                 Icon(Icons.policy_outlined,),
                 const SizedBox(width: 30,),
                Text("Terms & Condition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
               
              ],
              
            ),
           ),

             const SizedBox(height: 30,),

             Container(
               
                
                           margin: EdgeInsets.symmetric(horizontal: 25),
                           child: GestureDetector(
                            onTap: () => _showDialog(),
                             child: Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                             
                                             children: [
                                                Icon(Icons.logout_outlined,),
                                                const SizedBox(width: 30,),
                                               Text("Log Out",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                               Spacer(),
                                               Icon(Icons.arrow_forward_ios_sharp)
                                              
                                             ],
                                             
                             ),
                           ),
                          ),
             
      
      
         
      
         

           
      
      
          
      
         
      
      
          
      
          
      
            
          
        ],
      
      ),
      ),);
    
     
     
  }
}