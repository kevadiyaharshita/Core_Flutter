import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text("🛍List of Fruits"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        ),
        body: Center(
        child: RichText(

        text: TextSpan(
        children: [
          TextSpan(
        text: '🍎 Apple\n',
        style: TextStyle(color: Color.fromRGBO(255,0,0, 1),fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold),), /*defining default style is optional */

           TextSpan(
              text: '🍇 Greps\n',
               style: TextStyle(color: Color(0xffE11299),fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
           TextSpan(
              text: '🍒 Cherry\n',
               style: TextStyle(color: Colors.purple,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
           TextSpan(
               text: '🍓 Stawberry\n',
                  style: TextStyle(color: Colors.primaries[1],fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
           TextSpan(
              text: '🥭 Mango\n',
              style: TextStyle(color: Colors.amber,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
          TextSpan(
              text: '🍍 Pineapple\n',
              style: TextStyle(color: Colors.green,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
          TextSpan(
              text: '🍋 Lemon\n',
              style: TextStyle(color: Colors.amberAccent,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
          TextSpan(
              text: '🍉 Watermelon\n',
              style: TextStyle(color: Colors.lightGreen,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
          TextSpan(
              text: '🥥 Coconut\n',
              style: TextStyle(color: Colors.brown,fontSize: 35,letterSpacing: 3,fontWeight: FontWeight.bold)),
        ],
         )
        ),
      ),
    ),
  )
  );
}





