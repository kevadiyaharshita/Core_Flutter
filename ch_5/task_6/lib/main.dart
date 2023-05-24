import 'package:flutter/material.dart';

void main()
{
  double w=40;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("3D Cube"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 225,

            decoration: BoxDecoration(
              color: Colors.teal,
              border: Border(
                top:BorderSide(
                  width: w,
                  color: Colors.teal.shade200
                ),
                bottom: BorderSide(
                  width: w,
                  color: Colors.teal.shade200
                ),
                left: BorderSide(
                  width: w,
                  color: Colors.teal.shade300
                ),
                right: BorderSide(
                  width: w,
                  color: Colors.teal.shade300
                )
              )
            ),
          ),
        ),
      ),
    ),
  );
}