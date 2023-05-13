import 'package:flutter/material.dart';

TextSpan application(int check,String str)
{
  if(check==1)
    {
      return TextSpan(text: str,style: TextStyle(fontSize: 33,color:Color(0xffF97B22),fontWeight: FontWeight.bold,letterSpacing: 3));
    }
  else
    {
     return TextSpan(text: str,style: TextStyle(fontSize: 28,color:Color(0xff7C9070),letterSpacing: 3,fontWeight: FontWeight.bold));
    }

}

void main()
{
  Color bgColour=Color(0xffFEE8B0);
  double font_size=22;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xffF97B22),
          title: Text("My Appllications"),
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search),
            Icon(Icons.notifications),
            Icon(Icons.settings),
            SizedBox(width: 10,),
          ],
        ),
        body:Center(
          child:  Text.rich(
              TextSpan(
                children: [
                  (application(1,"A")),
                  (application(0,"mazone")),
                  (application(1,"         N")),
                  (application(0,"etflix\n")),

                  (application(1,"B")),
                  (application(0,"iugo")),
                  (application(1,"              O")),
                  (application(0,"lx\n")),

                  (application(1,"C")),
                  (application(0,"lassroom")),
                  (application(1,"       P")),
                  (application(0,"honepay\n")),

                  (application(1,"D")),
                  (application(0,"uolingo")),
                  (application(1,"         Q")),
                  (application(0,"uizlet\n")),

                  (application(1,"E")),
                  (application(0,"yecon")),
                  (application(1,"           R")),
                  (application(0,"apido\n")),

                  (application(1,"F")),
                  (application(0,"acebook")),
                  (application(1,"        S")),
                  (application(0,"potify\n")),

                  (application(1,"G")),
                  (application(0,"pay")),
                  (application(1,"              T")),
                  (application(0,"elegram\n")),

                  (application(1,"H")),
                  (application(0,"otstar")),
                  (application(1,"           U")),
                  (application(0,"ber\n")),

                  (application(1,"I")),
                  (application(0,"nstagram")),
                  (application(1,"       V")),
                  (application(0,"oot\n")),

                  (application(1,"J")),
                  (application(0,"iotv")),
                  (application(1,"              W")),
                  (application(0,"hatsaap\n")),

                  (application(1,"K")),
                  (application(0,"otackbank")),
                  (application(1,"     X")),
                  (application(0,"ender\n")),

                  (application(1,"L")),
                  (application(0,"ayout")),
                  (application(1,"            Y")),
                  (application(0,"outube\n")),

                  (application(1,"M")),
                  (application(0,"eesho")),
                  (application(1,"          Z")),
                  (application(0,"omato\n")),
                ],
              )
          ),
        ),

        backgroundColor: (bgColour),
      ),
    ),
  );
}