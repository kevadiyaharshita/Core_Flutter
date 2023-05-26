import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 70,

            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   width: 1,
              //   color: Colors.teal,
              // ),
              borderRadius: BorderRadius.circular(20),

              boxShadow:[
                BoxShadow(
                  color: Colors.teal,
                  spreadRadius: 5,
                  blurRadius: 15,
                )
              ],
            ),
            alignment: Alignment.center,
            child: Text("Tap",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    ),
  );
}