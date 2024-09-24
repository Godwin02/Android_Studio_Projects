import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Page 3"), backgroundColor: const Color.fromARGB(255, 241, 166, 139),),
      body: 
      SafeArea(child:
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.cover, image: AssetImage("Assests/star.png"))),
          child: Column(
          children: 
          [
          
          ],),
        )
        ),
    );
  }
}