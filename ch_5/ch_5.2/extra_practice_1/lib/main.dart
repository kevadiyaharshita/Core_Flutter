import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Pattern"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 350,
            height: 350,

            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 15,
                ),
                right:BorderSide (
                color: Colors.black,
                width: 15,
                ),
                bottom:BorderSide (
                  color: Colors.black,
                  width: 15,
                ),
              )
            ),
            alignment: Alignment.topRight,

            child: Container(
              width :300,
              height: 300,

              decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.black,
                      width: 15,

                    ),
                    top:BorderSide (
                      color: Colors.black,
                      width: 15,
                    ),
                  )
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                width:250,
                height: 250,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 15,

                      ),
                      right:BorderSide (
                        color: Colors.black,
                        width: 15,
                      ),
                    )
                ),
                alignment: Alignment.topRight,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 15,

                        ),
                        left:BorderSide (
                          color: Colors.black,
                          width: 15,
                        ),
                      )
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 150,
                    height: 150,

                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 15,

                          ),
                          right:BorderSide (
                            color: Colors.black,
                            width: 15,
                          ),
                        )
                    ),
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 100,
                      height: 100,

                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.black,
                              width: 15,

                            ),
                            left:BorderSide (
                              color: Colors.black,
                              width: 15,
                            ),
                          )
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 50,
                        height: 50,

                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 15,

                              ),
                              right:BorderSide (
                                color: Colors.black,
                                width: 15,
                              ),
                            )
                        ),
                      ),
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