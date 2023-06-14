import 'package:appmania/utils/Color_utils.dart';
import 'package:appmania/utils/allProduct.dart';
import 'package:appmania/utils/my_Routes_utils.dart';
import 'package:appmania/utils/variable.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {

  double total_price=0;
  double subtotal=0;
  double total=0;
  double delivery_charge=3.50;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subtotal=0;
    total=0;
  }

  @override
  Widget build(BuildContext context) {


    subtotal=total=0;
    Size s=MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        actions: [
          GestureDetector(

            onTap: (){
              Navigator.of(context).pushNamedAndRemoveUntil(MyRoutes.home, (route) => false);
            },
              child: Icon(Icons.close)

          ),
          SizedBox(
            width: 10,
          ),
        ],
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: cgreen,
      ),

      body: Center(
        child: Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            color: cgreen,
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            width: w,
            height: h-120,

            decoration: BoxDecoration(
              color: HPBackGroundColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            ),

            alignment: Alignment.center,
            child: Stack(
              children: [
                 Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      width: w,
                      height: h/2-78,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: allProduct.map((e) {
                            subtotal=subtotal+(e['qty']*e['price']);
                            total=subtotal+delivery_charge;

                            total_price=e['qty']*e['price'];
                            if(e['qty']!=0)
                            {
                              return Row(
                                children: [
                                  Container(

                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
                                    width: w-36,
                                    height: 100,

                                    decoration: BoxDecoration(
                                      color: subColor,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image:DecorationImage(
                                                image:  AssetImage(e['thumbnail']),
                                                // fit: BoxFit.cover
                                              ),

                                            ),

                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          flex:2,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text(e['title'],
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('\$ ${e['price'].toString()}',
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 55,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(

                                                children: [
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        setState(() {

                                                          // change_qty=e['qty'];
                                                           if(e['qty']>0)
                                                             e['qty']--;


                                                          total_price=e['qty']*e['price'];
                                                        });
                                                      },
                                                      child: Icon(Icons.remove_circle,),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Expanded(child: Center(child: Text('${e['qty']}',style: TextStyle(fontWeight: FontWeight.bold),))),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Expanded(
                                                    child: GestureDetector(
                                                        onTap:(){
                                                          setState(() {

                                                            e['qty']++;
                                                            total_price=e['qty']*e['price'];
                                                          });
                                                        },
                                                        child: Icon(Icons.add_circle,)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text('\$ $total_price',style: TextStyle(fontSize: 14),),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),


                                  ),
                                ],
                              );
                            }
                            else
                            {
                              return Container();
                            }

                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Container(
                      width: w-36,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: subColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.discount_outlined,color: Colors.grey,),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Promo Code",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          SizedBox(width: 140,),
                          Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              color: cgreen,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: cgreen,
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text("Apply",style: TextStyle(color: Colors.white,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      width: w,
                      height: 260,
                      decoration: BoxDecoration(
                        color: subColor,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('\$ $subtotal',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('\$ $delivery_charge',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total",
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                              Text('\$ $total',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 35,),

                          Container(
                            width: w,
                            height: 50,
                            decoration: BoxDecoration(
                              color: cgreen,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            alignment: Alignment.center,
                            child: Text("CHECKOUT",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: subColor
                              ),
                            ),
                          )
                        ],
                      ),

                    )

                  ],
                ),

              ],

            ),

          )
        ),
      ),

    );
  }
}

Widget eachRow(int i)
{
  if(allProduct[i]['qty']!=0)
    {
      return Row(
          children: [

          ],
      );
    }
  else
    {
      return Container();
    }


}


