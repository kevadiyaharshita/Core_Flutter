import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),

        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 60,

            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1,
                  color: Colors.red,
              ),
              boxShadow:[
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: 5,
                  blurRadius: 30,
                )
              ],
            ),
            alignment: Alignment.center,
            child: Text("Tap",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}