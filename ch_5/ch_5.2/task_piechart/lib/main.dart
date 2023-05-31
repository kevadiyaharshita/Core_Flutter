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
                    gradient: SweepGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                        Colors.blue,
                        Colors.yellow,
                        Colors.yellow,
                        Colors.green,
                      ],

                      stops: [0.25,0.25,0.5,0.5,0.75,0.75],
                    ),

                  ),

                  // child: InkWell(
                  //   onTap: (){
                  //     print("hello");
                  //   },
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: Alignment(-0.5,-0.5),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),

                        ),
                        
                          child: Container(
                            width: 179,
                            height: 179,

                            child:Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "25%",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,

                                    )
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ),

  );
}