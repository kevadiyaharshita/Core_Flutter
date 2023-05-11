import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App",style: TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          leading:Icon(Icons.menu),

          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text("Red & White",style: TextStyle(
            fontSize: 40,
           // height: 5,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 0.5,

            decorationColor: Colors.amber,

            color: Colors.redAccent,

          ),
          ),

        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}