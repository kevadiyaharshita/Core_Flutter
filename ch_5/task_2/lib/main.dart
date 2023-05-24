import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission of RNW"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            width: 350,
            height: 100,
            alignment: Alignment(0,0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Shapping "skills" for "scalinh" higer\n',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  TextSpan(text: "-RNW",style: TextStyle(fontSize: 22,fontWeight:FontWeight.normal))
                ],

              ),

            ),
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              border: Border(
                left: BorderSide(
                  width: 10,
                  color: Colors.red,
                ),
              ),
            ),
          ),

        ),
      ),
    ),
  );
}