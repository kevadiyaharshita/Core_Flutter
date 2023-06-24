
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

  String category="";
  Color allItems_clr=cgreen;
  Color allItem_txt=Colors.white;
  Color salad_clr=subColor;
  Color salad_txt=Colors.black;
  Color pizza_clr=subColor;
  Color pizza_txt=Colors.black;
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
            Text("Surat City",
            style: TextStyle(color: Colors.black),
            )
          ],
        ),

        actions: [
             GestureDetector(
               onTap: (){
                 Navigator.of(context).pushNamed(MyRoutes.cartPage);
               },
                 child: Icon(Icons.shopping_basket,color: Colors.black,)
             ),
          // ),
          SizedBox(width: 10,)
        ],

        foregroundColor: Colors.black,
        backgroundColor: HPBackGroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
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
                      Icon(Icons.filter_alt_outlined,color: Colors.black54,size: 30),
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
                  InkWell(
                    onTap: (){
                      setState(() {
                        category="All Items";
                        category_Item.clear();
                        for(int i=0;i<allProduct.length;i++)
                          {

                                category_Item.add(allProduct[i]);
                          }
                        allItems_clr=cgreen;
                        allItem_txt=Colors.white;
                        pizza_clr=subColor;
                        pizza_txt=Colors.black;
                        salad_clr=subColor;
                        salad_txt=Colors.black;



                      });

                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color:allItems_clr,// Color(0xff5DCF41),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text("All Items",
                      style: TextStyle(
                        color: allItem_txt,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {

                        category="Salad";
                        category_Item.clear();
                        for(int i=0;i<allProduct.length;i++)
                        {
                          if(category==allProduct[i]['category'])
                            category_Item.add(allProduct[i]);
                        }
                        salad_clr=cgreen;
                        salad_txt=Colors.white;
                        pizza_clr=subColor;
                        pizza_txt=Colors.black;

                        allItems_clr=subColor;
                        allItem_txt=Colors.black;

                      });
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color:salad_clr,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text("Salad",
                        style: TextStyle(
                            color: salad_txt,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        category="Pizza";
                        category_Item.clear();
                        for(int i=0;i<allProduct.length;i++)
                        {
                        if(category==allProduct[i]['category'])
                        category_Item.add(allProduct[i]);
                        }
                        pizza_clr=cgreen;
                        pizza_txt=Colors.white;
                        salad_clr=subColor;
                        salad_txt=Colors.black;
                        allItem_txt=Colors.black;
                        allItems_clr=subColor;

                      });
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color:pizza_clr,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text("Pizza",
                        style: TextStyle(
                            color: pizza_txt,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),



              for(int i=0;i<category_Item.length/2;i++)
                eachRow(category_Item[i],category_Item[i+(category_Item.length/2).toInt()],category_con_width,category),




            ],
          ),
        ),
      ),
      backgroundColor: HPBackGroundColor,
    );
  }

  Widget eachRow(Map e,Map e1,double w,String cat)
  {
   return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        // if(cat == e['category'])
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
        // if(cat == e1['category'])
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
                          setState(() {
                            if(e1['qty']==0) {
                              e1['qty'] = 1;
                            }

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




