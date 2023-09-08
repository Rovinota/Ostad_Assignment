import 'dart:ui';

import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.green,
         title: Text("Home"),
          centerTitle: true,
          elevation: 70,
          leading: Icon(
            Icons.add_business_sharp,
          ),
          actions: [
            Icon(Icons.search),
          ],


        ),
      ),
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is mod 5 Assignment", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "My ",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    TextSpan(
                      text: "phone ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "name ",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    TextSpan(
                      text: "Your phone name",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ]
                ))
              ],
            ),
          )


    );
  }
}

