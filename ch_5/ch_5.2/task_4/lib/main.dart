import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gredient Button"),
          centerTitle: true,
          backgroundColor: Color(0xff48416A),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 70,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  //Colors.purple,
                  Colors.deepPurple,
                  Colors.blue.shade900,
                  Colors.blue,
                 // Colors.blue
                ],

                //stops: [0.3,0.4,0.6],
              ),
              border:Border.all(
                  width:1,
                  color: Colors.white,
              ),
              ),
              alignment: Alignment.center,
            child:Text(
              "Flutter",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ) ,
            ),

          ),
        backgroundColor: Color(0xff48416A),
        ),

      ),


  );
}