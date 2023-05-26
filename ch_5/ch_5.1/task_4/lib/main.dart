import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mashal"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.brown,
              border: Border(
                top:BorderSide(
                  width: 20,
                  color: Colors.brown.shade300,
                ),
                bottom: BorderSide(
                  width: 20,
                  color: Colors.brown.shade300,
                ),
                left: BorderSide(
                  width: 30,
                  color: Colors.white,
                ),
                right: BorderSide(
                  width: 30,
                  color: Colors.white,
                ),
              ),
            ),
            alignment: Alignment(100,-2.70),
            child: Text("🔥",style: TextStyle(fontSize: 35),),
          ),
        ),
      ),
    ),
  );
}