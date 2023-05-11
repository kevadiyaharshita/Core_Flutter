import 'package:flutter/Material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          centerTitle:true,
          backgroundColor: Colors.red,
          title:Text("Flutter App"),
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child:Text(" Red & White Group Of Institutes\none Step in Changing Education Chain... ",style: TextStyle(fontSize:20,color: Colors.red),textAlign:TextAlign.center ,),

        ),
      )
    )
  );
}
