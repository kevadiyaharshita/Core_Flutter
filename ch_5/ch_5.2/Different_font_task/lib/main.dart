import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: Text("Red & white Group Of Institute One steop In Changing Education Chain" ,
            // textAlign: TextAlign.center,
            // overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(
                color: Colors.grey,
                 blurRadius: 10,
                 offset: Offset(4,4),
              )],
              // foreground: Paint()
              //   ..color = Colors.cyan
              //   ..strokeWidth = 5
              //   ..style = PaintingStyle.stroke
            ),
          ),
        ),
      ),
    ),
  );
}