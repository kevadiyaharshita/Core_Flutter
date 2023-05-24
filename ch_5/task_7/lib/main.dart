import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opened Doors"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 150,
            height: 200,

            decoration: BoxDecoration(
              color: Colors.black,

              border: Border(
               top: BorderSide(
                 width:20,
                 color: Colors.black,
               ),
                bottom: BorderSide(
                  width: 20,
                  color: Colors.black,
                ),
                left: BorderSide(
                  width:40,
                  color: Colors.grey.shade300,
                ),
                right: BorderSide(
                  width: 40,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}