import 'package:appmania/utils/Color_utils.dart';
import 'package:appmania/utils/variable.dart';
import 'package:flutter/material.dart';

import '../../utils/allProduct.dart';
import '../../utils/my_Routes_utils.dart';

class detail_Page extends StatefulWidget {
  const detail_Page({Key? key}) : super(key: key);

  @override
  State<detail_Page> createState() => _detail_PageState();
}

class _detail_PageState extends State<detail_Page> {
  int count=1;
  @override

  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size s=MediaQuery.of(context).size;
    double h=s.height;
    double w=s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: cgreen,
        elevation: 0,
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(
            width: 10,
          )
        ],
      ),


      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              cgreen,
              Colors.white,
              Colors.white,
              // Colors.white
            ],
          )
        ),
        child: Stack(
          children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.end,
             // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                width: w,
                height: h-230,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: cgreen,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(count>1)
                                        count--;
                                      print("count: $count");
                                    });
                                  },
                                  icon: Icon(Icons.remove,color: Colors.white,)
                              ),
                            ),
                            Expanded(
                              child: Center(

                                child: Text("${count}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,

                                  ),),
                              ),
                            ),

                            Expanded(
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      count++;
                                      print("count: $count");
                                    });
                                  },
                                  icon: Icon(Icons.add,color: Colors.white,)
                              ),
                            ),
                          ],
                        ),
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(data['title'],
                          style:TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ) ,
                        ),
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(data['description'],
                          style:TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ) ,
                          maxLines: 3,

                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("⭐ ${data['rating'].toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                          Text("🔥 100 Kcal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                          Text("⏰ 5-10 Min",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Ingradients",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          box(data['Ingradients'][0]),
                          box(data['Ingradients'][1]),
                          box(data["Ingradients"][2]),
                          box(data["Ingradients"][3]),
                          box(data["Ingradients"][4]),


                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {

                            data['qty']=count;

                            Navigator.of(context).pushNamed(MyRoutes.cartPage,);
                          });
                        },
                        child: Container(
                          width: w,
                          height: 50,

                          decoration: BoxDecoration(
                            color: cgreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text("Add To Cart",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              )

            ],
          ),

            Positioned(
              top: h * 0.0,
              left: w * 0.5-120,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:DecorationImage(
                    image:  AssetImage(data['thumbnail']),
                    fit: BoxFit.cover
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      color: cgreen,
                    ),
                  ],

                ),

              ),
            )
        ]
        ),
      ),

    );
  }
}

Widget box(String t)
{
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: HPBackGroundColor,
      borderRadius: BorderRadius.circular(15),
    ),
    alignment: Alignment.center,
    child:Text(t,style: TextStyle(fontSize: 20),),
  );
}


