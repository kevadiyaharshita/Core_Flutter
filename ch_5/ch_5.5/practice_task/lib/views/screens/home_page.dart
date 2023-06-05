
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/color_utils.dart';
import '../../utils/product_utils.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Smart Phone",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(
              height: 10,
            ),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: allProducts.map((e)
                  {
                    if(e['category']=="smartphones")
                      {
                        return  Container(
                            width: 200,
                            height: 260,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3,3),
                                  blurRadius: 5,

                                )
                              ],
                            ),
                            child:Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius:BorderRadius.vertical(top: Radius.circular(30)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      // color: Colors.green,
                                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                                    ),
                                    alignment: Alignment.topLeft,
                                    child: Column(

                                      children:[
                                        Text(e['title'],style: TextStyle(
                                          fontSize: 22,
                                        ),),

                                        RatingBarIndicator(
                                          rating : e['rating'],
                                          itemBuilder: (context, index) =>
                                              Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                              ),
                                          itemCount: 5,
                                          itemSize: 20,
                                          direction: Axis.horizontal,
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                        );
                      }
                    else
                      {
                        return SizedBox();
                      }
                  }
                ).toList(),
              ),
            )


          ],
        ),
      ),

    );
  }

}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//         centerTitle: true,
//         backgroundColor: myBg,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         actions: const [
//           Icon(Icons.shopping_cart),
//           SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(18),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Smartphones",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               physics: const BouncingScrollPhysics(),
//               child: Row(
//                 children: allProducts.map(
//                       (e) {
//                     if (e['category'] == "smartphones") {
//                       return Container(
//                         margin: const EdgeInsets.all(5),
//                         height: 260,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(30),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 1,
//                               offset: Offset(2, 2),
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           children: [
//                             // Unscrollable row/column
//                             Expanded(
//                               flex: 2,
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.grey,
//                                   borderRadius: BorderRadius.vertical(
//                                     top: Radius.circular(30),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             // const Spacer(
//                             //   flex: 2,
//                             // ),
//                             Expanded(
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius: BorderRadius.vertical(
//                                     bottom: Radius.circular(30),
//                                   ),
//                                 ),
//                                 alignment: Alignment.topLeft,
//                                 padding: const EdgeInsets.all(5),
//                                 child: Text(e['title']),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     } else {
//                       return SizedBox();
//                     }
//                   },
//                 ).toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: myBg,
//     );
//   }
// }