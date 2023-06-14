import 'package:appmania/utils/Color_utils.dart';
import 'package:appmania/utils/my_Routes_utils.dart';
import 'package:appmania/utils/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/allProduct.dart';
import 'detail_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    Size s=MediaQuery.of(context).size;
    List<Container> container_List=[];
    double category_con_width=(s.width-54);
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.location_on_rounded,color: Colors.black),

        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.location_on_rounded,color: Colors.black),
            SizedBox(
              width: 7,
            ),
            Text("Habiganj City",
            style: TextStyle(color: Colors.black),
            )
          ],
        ),

        actions: [
             Icon(Icons.sort_outlined,color: Colors.black,),
          // ),
          SizedBox(width: 10,)
        ],

        foregroundColor: Colors.black,
        backgroundColor: HPBackGroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Find The ",style: TextStyle(fontSize: 35,color: Colors.black54),),
                  Text("Best",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                children: [
                  Text("Food ",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  Text("Around You",style: TextStyle(fontSize: 35,color: Colors.black54),)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  height: 50,
                  width: s.width,
                  decoration: BoxDecoration(
                    color: subColor,
                    borderRadius: BorderRadius.circular(30)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search,color: Colors.black54,size: 30),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Search your favourit food ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Icon(Icons.add_call,color: Colors.black54,size: 30),

                    ],

                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Find",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(width: 10,),
                  Text("5km ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,size: 15,color: Colors.red,)
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color:cgreen,// Color(0xff5DCF41),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Text("Salads",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color:subColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Text("Hot Sale",
                      style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color:subColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Text("Popularity",
                      style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              for(int i=0;i<allProduct.length/2;i++)
                eachRow(allProduct[i],allProduct[i+5],category_con_width),

            ],
          ),
        ),
      ),
      backgroundColor: HPBackGroundColor,
    );
  }






  Widget eachRow(Map e,Map e1,double w)
  {
   return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(
                MyRoutes.detailPage,
                arguments: e,
            );
          },
          child: Container(
             margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
            // padding: EdgeInsets.all(5),
            width: w/2,
            height: 280,
            decoration: BoxDecoration(
                color: subColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 140,
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),

                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(e['thumbnail']),
                        fit: BoxFit.cover,
                      )

                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(e['title'],
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("20 min",
                      style: TextStyle(color: Colors.black54),
                    ),

                    SizedBox(
                      width: 40,
                    ),
                    RatingBarIndicator(
                      rating:4.5,
                      itemBuilder: (context, index) => Icon(Icons.star_border_outlined,color: Colors.amber,),
                      itemCount: 1,

                      itemSize: 20,
                      direction: Axis.horizontal,
                    ),

                    Text(e['rating'].toString(),
                      style: TextStyle(color: Colors.black54),
                    ),

                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("\$ ${e['price'].toString()}",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                       onTap: (){
                         // Map tmp_qtyMap=e;
                         // tmp_qtyMap.addAll({'qty': 1});

                         setState(() {
                           if(e['qty']==0)
                             {
                               e['qty']=1;
                             }
                           // bool check=false;
                           // for(int i=0;i<HP_Counter.length;i++)
                           //   {
                           //     // check=HP_Counter[i].contains(e['id']);
                           //    check= HP_Counter[i].containsValue(e['id']);
                           //   }
                           //
                           // if(check == false)
                           //   {
                           //     HP_Counter.add(tmp_qtyMap);
                           //   }
                         });
                       },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: cgreen,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),
                          alignment: Alignment.center,
                          child: Icon(Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context)=>detail_Page(),),
            Navigator.of(context).pushNamed(
              MyRoutes.detailPage,
              arguments: e1

            );
          },
          child: Container(
             margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
            // padding: EdgeInsets.all(5),
            width: w/2,
            height: 280,
            decoration: BoxDecoration(
                color: subColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 140,
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),

                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      image: DecorationImage(
                        image: AssetImage(e1['thumbnail']),
                        fit: BoxFit.cover,
                      )

                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(e1['title'],
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("20 min",
                      style: TextStyle(color: Colors.black54),
                    ),

                    SizedBox(
                      width: 40,
                    ),
                    RatingBarIndicator(
                      rating:4.5,
                      itemBuilder: (context, index) => Icon(Icons.star_border_outlined,color: Colors.amber,),
                      itemCount: 1,

                      itemSize: 20,
                      direction: Axis.horizontal,
                    ),

                    Text(e1['rating'].toString(),
                      style: TextStyle(color: Colors.black54),
                    ),

                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("\$ ${e1['price'].toString()}",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: (){
                          // Map tmp_qtyMap=e1;
                          // tmp_qtyMap.addAll({'qty': 1});

                          setState(() {
                            if(e1['qty']==0) {
                              e1['qty'] = 1;
                            }
                            // bool check=false;
                            // for(int i=0;i<HP_Counter.length;i++)
                            // {
                            //   // check=HP_Counter[i].contains(e['id']);
                            //   check= HP_Counter[i].containsValue(e1['id']);
                            // }
                            //
                            // if(check == false)
                            // {
                            //   HP_Counter.add(tmp_qtyMap);
                            // }
                          });
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: cgreen,//Color(0xff5DCF41),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          ),
                          alignment: Alignment.center,
                          child: Icon(Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

      ],
    );

  }
}




