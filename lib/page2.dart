import 'package:flutter/material.dart';
import 'package:flutter_training/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//represts the page.
      backgroundColor: const Color.fromARGB(255, 156, 101, 171),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 170, 142),
        title: Text("My Application Screen2"),
      ),
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              backgroundColor: Colors.green,foregroundColor: Colors.red),
              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page3()));}, 
              child: Text("Next Page"),)
            ],
          ),
        ),
      )),
    );
  }
}