import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        
        
        body: Align(
          alignment: Alignment.center,
          child: Ink(
            width: 200,
           height: 70,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              boxShadow:[
                BoxShadow(
                  offset: Offset(8,8),
                  blurRadius: 12,

                )
              ],
            ),
            child: InkWell(
              onTap: ()
              {
                print("hello");
              },
              splashColor: Colors.lightGreen,
              borderRadius: BorderRadius.circular(30),


                child: Container(


                  alignment: Alignment.center,
                  child: Text("Button",style: TextStyle(fontSize: 22),),

                ),
              ),
            ),
        ),
        ),
      ),

  );
}