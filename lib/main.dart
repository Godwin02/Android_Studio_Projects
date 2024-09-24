
 import 'package:flutter/material.dart';
import 'package:flutter_training/page2.dart';

main() {
  runApp(const MyApp());
 }
 
 class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue)
      ),
      home: HomePage(),
    );
  }
 }
 class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(255, 235, 224, 224),
        title: Text("My Application",style: TextStyle(color: const Color.fromARGB(255, 187, 133, 8),fontWeight:FontWeight.w500)),
        centerTitle: true,
        leading: IconButton(color: const Color.fromARGB(255, 51, 90, 158), onPressed: (){}, icon: Icon(Icons.import_contacts_rounded)),
        actions: [IconButton(color: const Color.fromARGB(255, 51, 90, 158), onPressed: (){}, icon: Icon(Icons.add_a_photo)),
        IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit_sharp))],
      ),
      body: SafeArea(child: Center(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          TextButton(onPressed: (){}, child: Text("Click Here")),
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: const Color.fromARGB(255, 17, 20, 17),),
            onPressed: (){}, child: Text("Elevated Button") ,
            ),
          ElevatedButton.icon(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page2()));},
           icon: Icon(Icons.next_plan), label: Text("Next Page"),
          ),
          Image(image: AssetImage("Assests/star.png")),
          Image(image: AssetImage("Assests/trees.jpg")),
          Image(image: AssetImage("Assests/images.jpg")),
          Image(image: NetworkImage("https://banner2.cleanpng.com/lnd/20240818/cs/7885c85f741f8f7b5eee723a962355.webp")),
          Container(child: Image(image: NetworkImage("https://banner2.cleanpng.com/lnd/20240818/cs/7885c85f741f8f7b5eee723a962355.webp")),)
          ],),
        ),
      )),
    );
  }
}


