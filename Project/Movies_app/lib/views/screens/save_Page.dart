import 'package:flutter/material.dart';

class save_Page extends StatefulWidget {
  const save_Page({Key? key}) : super(key: key);

  @override
  State<save_Page> createState() => _save_PageState();
}

class _save_PageState extends State<save_Page> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size s=MediaQuery.of(context).size;
    double h=s.height;
    double w=s.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.save_alt),
          SizedBox(width: 10,)
        ],
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.shade200,
      ),
      body: Center(
          child: Container(
          width: w,
            height: h,

            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(data['thumnail']),fit: BoxFit.cover),
            ),
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  width: w,
                  height: h*0.5,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)
                    ],
                  ),
                )
              ],
            ),
        ),
      ),

    );
  }
}
