import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Button"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,

            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),

              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 10,
                  blurRadius: 25,
                ),
              ],
            ),
            alignment: Alignment.center,
            child:
            Text("GO",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
        ),
        backgroundColor: Colors.black,
      ),

    ),
  );
}