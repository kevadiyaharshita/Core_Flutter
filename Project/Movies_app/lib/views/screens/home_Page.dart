import 'package:flutter/material.dart';
import 'package:movies_app/utils/allMovies.dart';

import '../../utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s=MediaQuery.of(context).size;
    double h=s.height;
    double w=s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Plus',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        leading: Icon(Icons.local_movies_sharp,size: 50,),
        actions: [
          Icon(Icons.search_rounded,size: 30,),
          SizedBox(width: 10,),
        ],
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [

           SingleChildScrollView(
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Recent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                   SizedBox(height: 20,),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children:
                         allMovies.map((e) =>GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                MyRoutes.savePage,
                                arguments: e,
                              );
                            },
                           child: Container(
                              margin: EdgeInsets.all(20),
                             width: w*0.6,
                             height: 500,
                             child: Column(
                               children: [
                                 Expanded(
                                   flex: 3,
                                   child: Container(
                                     width: w*0.6,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),

                                        image: DecorationImage(image: NetworkImage(e['thumnail']),fit: BoxFit.cover),
                                     ),
                                   ),
                                 ),
                                 Expanded(child:
                                 Container(
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),

                                   ),
                                   alignment: Alignment.topLeft,
                                   child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Text(e['title'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                       Text(e['category'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey)),

                                     ],
                                   ),
                                 )),

                               ],
                             ),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),


                               // image: DecorationImage(image: NetworkImage(e['thumnail']),fit: BoxFit.cover),
                             ),
                           ),
                         )
                         ).toList(),
                     ),
                   ),

                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: Images.map((e) =>Container(
                           width: 150,
                           height: 200,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(image: NetworkImage(e),fit: BoxFit.cover),
                           ),
                         )).toList(),

                     ),
                   ),
                   SizedBox(
                     height: 100,
                   )

                 ],
               ),
             ),
           ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10),
                width: w,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.feed,size: 38,),
                          SizedBox(width: 5,),
                          Text("Feed",style:TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Icon(Icons.save_alt,size: 38,color: Colors.grey,),
                    Icon(Icons.person_outline,size: 38,color: Colors.grey,),
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
