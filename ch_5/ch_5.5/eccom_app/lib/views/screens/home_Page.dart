import 'package:eccom_app/utils/allProduct.dart';
import 'package:eccom_app/utils/color_utils.dart';
import 'package:eccom_app/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class HomePage extends StatefulWidget
{
  const HomePage({Key? key}):super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    Size s=MediaQuery.of(context).size;
    double h=s.height;
    double w=s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("Smart Phones",style:
               TextStyle(fontSize:24,fontWeight: FontWeight.bold )
              ,),
             SizedBox(
               height: 10,
             ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                 children: allProducts.map((e) {

                    // if(e['category']=="smartphones")
                    //   {
                        return Container(
                          margin: EdgeInsets.all(5),
                          width: w * 0.55,
                          height: h * 0.37,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3,3),
                                blurRadius: 5,
                              ),
                            ],
                          ),

                          child: Column(
                            children: [
                              Expanded(
                                flex : 2,
                                child: Container(
                                    
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(e['thumbnail']),
                                        fit: BoxFit.cover,
                                      ),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Column(

                                    children: [
                                      Text(e['title'],style: TextStyle(fontSize: 22),),

                                      RatingBarIndicator(
                                        rating:double.parse( e['rating'].toString()),
                                        itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber,),
                                        itemCount: 5,
                                        itemSize: 20,
                                        direction: Axis.horizontal,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                    //   }
                    // else
                    //   {
                    //       return SizedBox();
                    //   }

                  }).toList(),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(n1),
              foregroundImage: AssetImage(imagePath + allImages[2]),
            )

            // Image(
            //   image: AssetImage('assets/images/f2.jpg'),
            //   height: 250,
            //   width: 250,
            //   fit: BoxFit.cover,
            // ),

            // Image.asset(
            //   imagePath+allImages[3],
            //   width: 200,
            //   height: 200,
            //   fit: BoxFit.cover,
            // )

            // Image.network(
            //   n1,
            //   fit: BoxFit.cover,
            //   width: 300,
            //   height: 300,
            // )


          ],
        ),
      ),
      backgroundColor: myBg,
    );
  }
}



