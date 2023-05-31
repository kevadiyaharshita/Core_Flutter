import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  Color bgappBar=Color(0xff244D61);
  Color firstColor=Color(0xff75E2FF);
  Color secondColor=Color(0xff5689C0);
  int counter=1;
    @override
  Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic List"),
          centerTitle: true,
          backgroundColor: bgappBar,
        ),
        body: Align(
          alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Column(
                children: List.generate(counter, (index){

                  if(index % 2 == 0) {
                    return Container(
                      width: 390,
                      height: 120,
                      decoration: BoxDecoration(

                        color: firstColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("${index+1}",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }
                  else
                  {
                    return Container(
                      width: 390,
                      height: 120,
                      decoration: BoxDecoration(

                        color: firstColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text("${index+1}",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }
                }



                ),
              ),
              Column(

                children: [

                   Align(alignment: Alignment.bottomRight,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: bgappBar,
                            ),
                            alignment: Alignment.center,
                            child:Text("+",
                              style: TextStyle(fontSize: 50,
                                color: Colors.white,
                              ),)
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: bgappBar,
                            ),
                            alignment: Alignment.center,
                            child:Text("-",
                              style: TextStyle(fontSize: 50,
                                color: Colors.white,
                              ),)
                        )
                      ],
                  ),
                ],
              )
            ],
        ),
      ),
      );
    }
}