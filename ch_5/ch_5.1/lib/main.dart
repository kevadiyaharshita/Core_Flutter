import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),

        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            width: 300,
            height:300,
            alignment: Alignment(0,0),
             child:  Text("oooo",style: TextStyle(fontSize: 120,letterSpacing: -35,color: Colors.black,fontWeight: FontWeight.w300,),),
             decoration: BoxDecoration(
               color: Colors.limeAccent,
              border:Border.all(width: 30,color: Colors.green),

             ),

        ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
    ),
  );
}