import 'package:flutter/material.dart';

void main()
{
  double w=110;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Letter Cover"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 250,

            decoration: BoxDecoration(
              color: Colors.green,
              border: Border(
                top: BorderSide(
                  width: w,
                  color: Colors.green.shade300,
                ),
                bottom: BorderSide(
                  width: w,
                  color: Colors.green.shade300,
                ),
                left: BorderSide(
                  width: w,
                  color: Colors.green,
                ),
                right: BorderSide(
                  width: w,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}