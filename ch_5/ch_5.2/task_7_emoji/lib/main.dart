import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Emoji"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,

          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,

            decoration: BoxDecoration(
              color: Colors.lightGreen,
              shape: BoxShape.circle,

            ),
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              alignment: Alignment(0,-40),
              child: Container(
                width: 249,
                height: 249,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment(-0.7,-0.4),
                child: Container(
                  width: 60,
                  height: 60,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment(270,-0.4),
                  child: Container(
                    width: 59,
                    height: 59,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}