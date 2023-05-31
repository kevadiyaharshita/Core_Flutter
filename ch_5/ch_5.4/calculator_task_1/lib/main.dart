import 'package:flutter/material.dart';

void main()
{
  runApp(
      MaterialApp(
       debugShowCheckedModeBanner: true,
        home: MyApp(),
      )
  );
}




class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  // class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  int counter=0;
  Color all_color=Color(0xff54759E);


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calc"),
        centerTitle: true,
        backgroundColor: all_color,
        leading: Icon(Icons.menu),
      ),
      body: Align(
        alignment: Alignment.center,

        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // mainAxisSize: MainAxisSize.min,

          children: [
            // SizedBox(
            //   // width: 10,
            //   height: 20,
            // ),
            Container(
              width: 240,
              height: 240,
              margin: EdgeInsets.all(10),
              // margin: EdgeInsets.all(100),
              //color: Colors.grey,
              alignment: Alignment.center,
             child: Text(" $counter",
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.grey,
                ),
              ),
            ),
            Align(alignment: Alignment.center,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Ink(
                 decoration: BoxDecoration(
                   color: all_color,
                   borderRadius: BorderRadius.circular(15),
                 ),
                 child: InkWell(
                   onTap: (){
                     setState(() {
                       counter-=2;
                     });

                   },
                   child:  Container(
                     width: 150,
                     height: 50,
                     margin: EdgeInsets.all(10),
                     alignment: Alignment.center,
                     child: Text("-2",
                       style: TextStyle(
                         fontSize: 25,
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),
               ),

                Ink(
                  decoration: BoxDecoration(
                    color: all_color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        counter+=2;
                      });
                    },
                    child:  Container(
                      width: 150,
                      height: 50,
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text("+2",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(alignment: Alignment.center,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Ink(
                  decoration: BoxDecoration(
                    color: all_color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        counter-=4;
                      });
                    },
                    child:  Container(
                      width: 150,
                      height: 50,
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text("-4",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Ink(
                  decoration: BoxDecoration(
                    color: all_color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        counter+=4;
                      });
                    },
                    child:  Container(
                      width: 150,
                      height: 50,
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text("+4",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Align(alignment: Alignment.center,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Ink(
            decoration: BoxDecoration(
            color: all_color,
              borderRadius: BorderRadius.circular(15),
                  ),
              child: InkWell(
                onTap: (){
                  setState(() {
                    counter=0;
                  });
                },
                child:  Container(
                    width: 150,
                    height: 50,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text("Clear",
                    style: TextStyle(
                      fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),


              ],
            )
          ],
        ),
      ),
    );
  }
}