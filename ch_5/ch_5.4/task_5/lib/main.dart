import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget
{
  const MyApp({Key? key}):super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  Color icon_color=Colors.black;
  Container color_container(Color c)
  {
    return Container(
      height: 90,
      width: 90,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(10),
      ),

    );
  }

  Container Icon_container(Icon icon_select)
  {
    return Container(
      height: 90,
      width: 90,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
        boxShadow:[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
          )
        ],
      ),
      child: icon_select,
    );
  }

  Color Icon_color=Colors.black;
  IconData h=Icons.arrow_back_ios_new_rounded;


   Icon i1=Icon(Icons.arrow_back_ios_sharp,size: 90,color: Colors.black) ;
  @override
  Widget build(BuildContext contex)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons Editor"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Align(
        alignment: Alignment.center,
       child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(
             height: 320,
             width: 380,
              margin: EdgeInsets.all(7),
             decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 2,
                 )
               ],
             ),
             alignment: Alignment.center,
             child: new Icon(h,color: Icon_color,size: 90,),
           ),
           Container(
             width: 380,
             height: 60,
             margin: EdgeInsets.all(7),
             decoration: BoxDecoration(
               color: Color(0xffFAFAFA),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 2,
                 )
               ],
             ),
             alignment: Alignment.center,
             child: Text("Select Color",
             style: TextStyle(
               fontSize: 24,
               color: Colors.black
             ),
             ),
           ),
           Container(
             width: 380,
             height: 120,
             margin: EdgeInsets.all(7),
             decoration: BoxDecoration(
               color: Color(0xffFAFAFA),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 2,
                 )
               ],
             ),
             alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.grey;
                      });
                    },
                    child: color_container(Colors.grey),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.red;
                      });
                    },
                    child: color_container(Colors.red),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.blue;
                      });
                    },
                    child:  color_container(Colors.blue),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.yellow;
                      });
                    },
                    child: color_container(Colors.yellow),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.green;
                      });
                    },
                    child: color_container(Colors.green),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.purple;
                      });
                    },
                    child: color_container(Colors.purple),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        Icon_color=Colors.pink;
                      });
                    },
                    child:  color_container(Colors.pink),
                  ),




                ],
              ),
            ),
           ),
           Container(
             width: 380,
             height: 60,
             margin: EdgeInsets.all(7),
             decoration: BoxDecoration(
               color: Color(0xffFAFAFA),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 2,
                 )
               ],
             ),
             alignment: Alignment.center,
             child: Text("Select Icon",
               style: TextStyle(
                   fontSize: 24,
                   color: Colors.black
               ),
             ),
           ),
           Container(
             width: 380,
             height: 120,
             margin: EdgeInsets.all(7),
             decoration: BoxDecoration(
               color: Color(0xffFAFAFA),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 2,
                 )
               ],
             ),
             alignment: Alignment.center,
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.settings;
                       });

                     },
                     child: Icon_container(Icon(Icons.settings,size: 30,color: Colors.blue,)),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.arrow_back_ios_new_rounded;

                       });

                     },
                     child: Icon_container(Icon(Icons.arrow_back_ios_new_rounded,size: 30,color: Colors.blue)),
                   ),

                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.accessible_forward_rounded;
                         // i=Icon(Icons.accessible_forward_rounded,size: 90);
                       });

                     },
                     child:Icon_container(Icon(Icons.accessible_forward_rounded,size: 30,color: Colors.blue)),
                   ),

                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.alarm;
                         // i=Icon(Icons.alarm,size: 90);
                       });

                     },
                     child:Icon_container(Icon(Icons.alarm,size: 30,color: Colors.blue)),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.call;
                         // i=Icon(Icons.call,size: 90);
                       });

                     },
                     child: Icon_container(Icon(Icons.call,size: 30,color: Colors.blue)),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.search;
                       });

                     },
                     // child: Icon_container(Icon(Icons.search,size: 30,color: Colors.blue)),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         h=Icons.add;
                         // i=Icon(Icons.add,size: 90);
                       });

                     },
                     child:  Icon_container(Icon(Icons.add,size: 30,color: Colors.blue)),
                   ),

                 ],
               ),
             ),
           ),
         ],
       ),

      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}