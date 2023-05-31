import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                ],
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Ink(
            width: 200,
            height: 70,

            decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Colors.red,
                 Colors.orange,
                 Colors.yellow,
               ],
             ),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap:(){
                print("hello");
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // width: 300,
                  //  height: 370,
                  alignment: Alignment.center,
                  child: Text("OK",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}