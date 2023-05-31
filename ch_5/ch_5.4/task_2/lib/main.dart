import 'package:flutter/material.dart';
import 'package:task_2_map/utils/Icons.dart';

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
  const MyApp ({Key? key}): super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}



class  _MyAppState extends State<MyApp>
{


  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: sp,
      ),

    ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}
//
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// // Container(
// //   width: 205,
// //   height: 100,
// //   color: Colors.white,
// //   alignment: Alignment(-0.5,0),
// // child: Text(e['name'],
// //       style:TextStyle(
// //           fontSize: 30
// //       )
// //   ),
// // ),
// Text(e['name']) ,
// // Container(
// //   width: 205,
// //   height: 100,
// //   alignment: Alignment(0.5,0),
// //   color: Colors.white,
// // child: e['icon'],
// e['icon'],
//
// // e['icon'],
// ],
// )
// ).toList(),