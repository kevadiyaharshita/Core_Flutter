import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Watch",style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Color(0xff48416A),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff48416A),
                Color(0xff2293EF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 70,

            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  Color(0xff4B78AC),
                  Color(0xff436DA1)
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff436DA1),
                  blurRadius: 10,
                  offset:Offset (5,5),
                )
              ],
            ),
            alignment: Alignment.center,
            child:Text("Flutter",
            style: TextStyle(fontSize: 25,color: Colors.white),
            ) ,
          ),
        ),
        
      ),
    ),
  );
}