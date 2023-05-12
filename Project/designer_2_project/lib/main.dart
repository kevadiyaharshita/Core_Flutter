import 'package:flutter/material.dart';

void main()
{
  double fontSize1=30,fontSize2=40,letterSpacing1=5;

  Color colorGreen=Colors.green;
  Color colorRed=Colors.red;
  Color colorBlue=Colors.blue;
  Color colorYellow=Colors.yellow;
  Color colorPurple=Colors.purple;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Red & White",style: TextStyle(letterSpacing: 3),),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "          G",style: TextStyle(fontSize: fontSize1,color: colorGreen,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"R",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "APHICS",style: TextStyle(fontSize: fontSize1,color: colorGreen,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n   FLUTT",style: TextStyle(fontSize: fontSize1,color: colorBlue,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"E",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "R",style: TextStyle(fontSize: fontSize1,color: colorBlue,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n        AN",style: TextStyle(fontSize: fontSize1,color: colorGreen,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"D",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "ROID",style: TextStyle(fontSize: fontSize1,color: colorGreen,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\nDESIGN ",style: TextStyle(fontSize: fontSize1,color: colorYellow,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"&",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: " DEVELOP",style: TextStyle(fontSize: fontSize1,color: colorYellow,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

              //  TextSpan(text: "\n      AN",style: TextStyle(fontSize: fontSize1,color: colorGreen,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"\n          w",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "EB",style: TextStyle(fontSize: fontSize1,color: colorBlue,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n       FAS",style: TextStyle(fontSize: fontSize1,color: Colors.limeAccent,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"H",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "ION",style: TextStyle(fontSize: fontSize1,color: Colors.limeAccent,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n ANIMAT",style: TextStyle(fontSize: fontSize1,color: colorPurple,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"I",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "ON",style: TextStyle(fontSize: fontSize1,color: colorPurple,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n           I",style: TextStyle(fontSize: fontSize1,color: colorBlue,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"T",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),
                TextSpan(text: "A-CS+",style: TextStyle(fontSize: fontSize1,color: colorBlue,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),

                TextSpan(text: "\n      GAM",style: TextStyle(fontSize: fontSize1,color: Colors.limeAccent,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1)),
                TextSpan(text:"E",style: TextStyle(fontSize: fontSize2,color: colorRed,fontWeight: FontWeight.bold,letterSpacing: letterSpacing1) ),


              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );

}