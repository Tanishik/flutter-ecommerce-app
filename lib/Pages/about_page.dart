import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/Home');
        }, icon: Icon(Icons.arrow_back)),
        ),

        body: Center(child: Text('about!'),),
        
      ),
    );
  }
}