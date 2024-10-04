import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  void userTapped() {
    print("User Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Test App"),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.logout)
              ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //First Box
            Container(
              height: 200,
              color: Colors.deepPurple,
            ),

            //Second Box
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: userTapped,
                child: Container(
                  color: Colors.deepPurple[400],
                  child: Center(child: Text("Tap me!")),
                ),
              ),
            ),
            
            //Third Box
            Expanded(
              child: Container(
                width: 200,
                color: Colors.deepPurple[200],
              ),
            ),


        ],),
      ),
    );
  }
}