import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Harshita",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff616161),
                  Color(0xff9bc5c3),
                ],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        body: Ink(
          // width: double.infinity,
          // height: double.infinity,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  Color(0xff616161),
                  Color(0xff9bc5c3),
                ],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: Ink(

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.red.shade200,
                      Colors.red.shade900,
                      // Colors.blue,
                      // Colors.yellow,
                      // Colors.yellow,
                      // Colors.green,
                    ],
                    center: Alignment(0,-0.5),
                    stops: [0.25,1],
                  ),

                ),

                // child: InkWell(
                //   onTap: (){
                //     print("hello");
                //   },
                child: Container(
                  width: 180,
                  height: 180,

                  // child: Text.rich(
                  //
                  //   TextSpan(
                  //
                  //     children: [
                  //
                  //       TextSpan(
                  //
                  //         text: "25%",
                  //         style: TextStyle(
                  //           fontSize: 22
                  //         )
                  //       ),
                  //
                  //       TextSpan(
                  //         text: "30%",
                  //         style: TextStyle(
                  //           fontSize: 22
                  //         )
                  //         )
                  //
                  //     ],
                  //   )
                  // ),
                ),
              ),
            )
        ),
      ),
    ),
  );
}