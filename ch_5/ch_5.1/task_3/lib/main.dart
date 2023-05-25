import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mix-up"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            width: 450,
            height: 450,
            alignment: Alignment(1.5,1),
            child: Container(
              width: 350,
              height: 370,
              alignment: Alignment(1,1),
              child: Container(
                width: 300,
                height: 300,
                alignment: Alignment(-1,-1),
                child: Container(
                  width: 230,
                  height: 230,
                  alignment: Alignment(-1,-1),
                  child: Container(
                    width: 160,
                    height: 160,

                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                          border: Border(
                            bottom: BorderSide(
                              width: 25,
                              color: Colors.green
                            ),
                            left: BorderSide(
                              width: 15,
                              color: Colors.green
                          ) ,
                          right: BorderSide(
                            width: 15,
                            color: Colors.green,
                          ),
                          top: BorderSide(
                            width: 25,
                            color: Colors.green,
                          )  ,
                      )
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
            ),

            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),
        ),
      ),
    ),
  );
}