import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("An Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 150,

            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.white,
                  Colors.green,
                ],
                stops: [0.3,0.5,0.7],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            alignment: Alignment.center,
            child: Text("✴",
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue.shade900
            ),),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
    ),
  );
}