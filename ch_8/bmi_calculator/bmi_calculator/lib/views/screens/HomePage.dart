import 'package:bmi_calculator/utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../../Globals/Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool FemalegendorSelector = false;
  bool cmSelector = true;
  bool kgSelector = true;

  double cm_height = 150;
  double ft_height = 5.0;

  double kg_weight_tmp = 60;
  double kg_grams_weight_tmp = 0;
  double lb_weight_tmp = 132;
  double lb_grams_weight_tmp = 0;

  double cm_height_tmp = 150;
  double ft_height_tmp = 5;
  double ft_pointValue_tmp = 0;

  double kg_weight = 60;
  double lb_weight = 132;

  bool listwheelVisibility = false;


  bool heightTextSelected = false;
  // bool ftSelected = false;
  bool weightTextSelected = false;

  // RangeValues myRange = const RangeValues(0, 120);
  double currentAge = 0.5;
  bool Calculate_Result_visibility = false;

  double matrixBMI = 0;
  double U_S_Unit = 0;

  double ftcoverter = 0;
  double lbconverter = 0;
  double BMI = 0;

  // double bmiIndigator = 20;

  String BMIRange = "";
  String BMICategories = "";
  Color? BMICatColor;

  
  @override
  Widget build(BuildContext context) {

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;



    return Scaffold(
      appBar:AppBar(
        title: Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.bold),),
        foregroundColor: Colors.white,
        backgroundColor: theme_1,
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            FemalegendorSelector = false;
                          });
                        },
                        child: Container(
                          width: 165,
                          height: 165,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: (!FemalegendorSelector) ? theme_1 : theme_4,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.man_outlined,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text("Male",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            FemalegendorSelector = true;
                          });
                        },
                        child: Container(
                          width: 165,
                          height: 165,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: (FemalegendorSelector) ? theme_1 : theme_4,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.woman_outlined,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text("Female",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text("Height",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           cmSelector = true;
                         });
                        },
                        child: Text("cm",
                          style: TextStyle(
                              fontSize: (cmSelector) ? 18 : 14,
                              color: (cmSelector)? theme_2 : null,
                              fontWeight: (cmSelector) ? FontWeight.bold : FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            cmSelector = false;
                          });
                        },
                        child: Text("ft",
                          style: TextStyle(
                              fontSize: (!cmSelector) ? 18 : 14,
                              color: (!cmSelector)? theme_2 : null,
                              fontWeight:(!cmSelector) ?FontWeight.bold : FontWeight.normal
                          ),
                        ),
                      ),

                      //==========================

                      SizedBox(width: 55,),
                      Text("Weight",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            kgSelector = true;
                          });
                        },
                        child: Text("kg",
                          style: TextStyle(
                              fontSize: (kgSelector ) ? 18 : 14,
                              color: (kgSelector )? theme_2 : null,
                              fontWeight: (kgSelector ) ? FontWeight.bold : FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            kgSelector  = false;
                          });
                        },
                        child: Text("lb",
                          style: TextStyle(
                              fontSize: (!kgSelector ) ? 18 : 14,
                              color: (!kgSelector )? theme_2 : null,
                              fontWeight:(!kgSelector ) ?FontWeight.bold : FontWeight.normal
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                          color: theme_4.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  listwheelVisibility = true;
                                  heightTextSelected = true;
                                  weightTextSelected = false;
                                });
                              },
                                child: Text((cmSelector)?cm_height.toString():ft_height.toString()
                                  ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: theme_2),
                                )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: theme_2,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        // spreadRadius: 3,
                                      ),
                                    ]
                                  ),
                                  // alignment: Alignment.center,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        (cmSelector)?(cm_height<300)? cm_height++ : cm_height = 300
                                            :(ft_height < 10 ) ? ft_height++ : ft_height = 10;
                                      });
                                    },
                                    icon: Icon(Icons.add,size: 25,color: theme_5,),
                                  ),
                                ),

                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: theme_2,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          // spreadRadius: 3,
                                        ),
                                      ]
                                  ),
                                  // alignment: Alignment.center,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        (cmSelector)? (cm_height > 1) ? cm_height-- : cm_height = 1
                                            :(ft_height > 1) ? ft_height-- : ft_height =1;
                                      });
                                    },
                                    icon: Icon(Icons.remove,size: 25,color: theme_5,),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      //=====================================*******************=========================
                      SizedBox(width: 10,),
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                            color: theme_4.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                               setState(() {
                                 listwheelVisibility = true;
                                 heightTextSelected = false;
                                 weightTextSelected = true;
                               });
                              },
                                child: Text(
                                  (kgSelector)?kg_weight.toString():lb_weight.toString() ,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: theme_2),
                                )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: theme_2,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          // spreadRadius: 3,
                                        ),
                                      ]
                                  ),
                                  // alignment: Alignment.center,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        (kgSelector)?(kg_weight < 300) ? kg_weight++ : kg_weight = 300
                                            :(lb_weight < 660 ) ? lb_weight++ : lb_weight = 660;
                                      });
                                    },
                                    icon: Icon(Icons.add,size: 25,color: theme_5,),
                                  ),
                                ),

                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: theme_2,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          // spreadRadius: 3,
                                        ),
                                      ]
                                  ),
                                  // alignment: Alignment.center,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        (kgSelector)? (kg_weight > 1) ? kg_weight-- : kg_weight= 1
                                            :(lb_weight > 1) ? lb_weight-- : lb_weight =1;
                                      });
                                    },
                                    icon: Icon(Icons.remove,size: 25,color: theme_5,),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),

                  Text("Age",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Container(
                    width: 165+165+30,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: theme_4.withOpacity(0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10,),
                        Text("${(currentAge*100).toInt()}", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: theme_2),),

                        Expanded(
                            child: Slider(
                              value: currentAge,
                              min: 0,
                              max: 1,
                              divisions: 120,

                              thumbColor: theme_2,
                              activeColor: theme_2,

                              label: (currentAge*100).toInt().toString(),
                              onChanged: (val)
                              {
                                setState(() {
                                  currentAge = val;
                                }
                                );
                              },
                            )
                        ),

                      ],
                    ),
                    
                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      setState(() {


                        // Global.kg_weight = kg_weight;
                        // Global.lb_weight = lb_weight;
                        // Global.cm_height = cm_height;
                        // Global.ft_height = ft_height;
                        // Global.age = (currentAge*100).toInt();

                        (!cmSelector)?ftcoverter = ft_height * 30.48 :ftcoverter = cm_height;;
                       (!kgSelector)? lbconverter = lb_weight *  0.45359237 : lbconverter = kg_weight;
                       BMI = ((lbconverter / ftcoverter) / ftcoverter) * 10000;

                       if(BMI < 18.5)
                         {
                           BMIRange = "Under Weight";
                           BMICategories = "less than 18.5";
                           BMICatColor = Colors.blue;
                         }
                       else if(BMI >= 18.5 && BMI <= 24.9)
                         {
                           BMIRange = "Normal Weight";
                           BMICategories = "18.5 - 24.9";
                           BMICatColor = Colors.lightGreen;
                         }
                       else if(BMI >= 25 && BMI <= 29.9)
                       {
                         BMIRange = "Over Weight";
                         BMICategories = "25 - 29.5";
                         BMICatColor = Colors.amber;
                       }
                       else
                         {
                           BMIRange = " Obesity";
                           BMICategories = "25 - 29.5";
                           BMICatColor = Colors.red;
                         }
                       
                        Calculate_Result_visibility = true;
                      });

                    },
                    child: Container(
                      width: 165+165+30,
                      height: 60,
                      decoration: BoxDecoration(
                        color: theme_1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text("Calculate Your BMI",style: TextStyle(color: theme_5,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  )
                  
                ],
              ),
            ),

            Visibility(
              visible: listwheelVisibility,
              child: Container(
                height: h,
                width: w,

                // color: Colors.grey.withOpacity(0.5),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                        child: Container(
                      color: Colors.grey.withOpacity(0.5),
                    )),

                    Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme_4,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                color: theme_1,
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: (){
                                       setState(() {
                                         listwheelVisibility = false;
                                       });
                                      },
                                      child: Text("Cancel" , style: TextStyle(color: theme_5,)),
                                    ),
                                    Spacer(),
                                    TextButton(
                                      onPressed: (){
                                       setState(() {
                                         listwheelVisibility = false;
                                         if(heightTextSelected)
                                           {
                                             if(cmSelector)
                                               {
                                                 cm_height = cm_height_tmp;
                                               }
                                             else
                                               {
                                                 double p = 0.0;
                                                 if(ft_pointValue_tmp > 9)
                                                   {
                                                     p = ft_pointValue_tmp / 100;
                                                   }
                                                 else
                                                   {
                                                     p = ft_pointValue_tmp / 10;
                                                   }
                                                 ft_height = ft_height_tmp + p;
                                               }
                                           }
                                         else
                                           {
                                             if(kgSelector)
                                               {
                                                 double p = 0.0;
                                                 p = kg_grams_weight_tmp/10;
                                                 kg_weight = kg_weight_tmp + p;
                                               }
                                             else
                                               {
                                                 double p = 0.0;
                                                 p = lb_grams_weight_tmp/10;
                                                 lb_weight = lb_weight_tmp + p;
                                               }
                                           }

                                       });
                                      },
                                       child: Text("Done" , style: TextStyle(color: theme_5,)),
                                    ),
                                  ],
                                ),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: theme_3,
                                    ),
                                  ),
                                  (heightTextSelected)? (cmSelector)
                                      ?SizedBox(
                                        width: w,
                                        height: 300,
                                        child: ListWheelScrollView(
                                            itemExtent: 40,
                                        perspective: 0.01,
                                        diameterRatio: 2.5,
                                        squeeze: 1,

                                        // controller: contoller1,
                                        onSelectedItemChanged: (val){
                                          cm_height_tmp = (double.parse(val.toString()))+30;
                                          debugPrint("hh ${cm_height_tmp+30}");
                                        },
                                        children:List.generate(270, (index) => Container(
                                          height: 100,
                                          width: w,
                                          alignment: Alignment.center,
                                          child: Text("${index+30}",style: TextStyle(fontSize: 32,color: theme_1),),
                                        ))
                                    ),
                                  )
                                      :SizedBox(
                                        width: w,
                                        height: 300,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              height: 300,
                                              child: ListWheelScrollView(
                                              itemExtent: 40,
                                              perspective: 0.01,
                                              diameterRatio: 2.5,
                                              squeeze: 1,

                                              // controller: contoller1,
                                              onSelectedItemChanged: (val){
                                                ft_height_tmp = (double.parse(val.toString())+1);
                                                // debugPrint("hh ${cm_height_tmp+30}");
                                              },
                                              children:List.generate(10, (index) => Container(
                                                height: 100,
                                                width: 100,
                                                alignment: Alignment.center,
                                                child: Text("${index+1}",style: TextStyle(fontSize: 32,color: theme_1),),
                                              ))
                                          ),
                                            ),
                                            SizedBox(
                                              width: 120,
                                              height: 300,
                                              child: ListWheelScrollView(
                                                  itemExtent: 40,
                                                  perspective: 0.01,
                                                  diameterRatio: 2.5,
                                                  squeeze: 1,

                                                  // controller: contoller1,
                                                  onSelectedItemChanged: (val){
                                                    ft_pointValue_tmp = (double.parse(val.toString()));
                                                  },
                                                  children:List.generate(12, (index) => Container(
                                                    height: 100,
                                                    width: 100,
                                                    alignment: Alignment.center,
                                                    child: Text("${index}",style: TextStyle(fontSize: 32,color: theme_1),),
                                                  ))
                                              ),
                                            ),
                                          ],
                                        ),
                                  )
                                     //=============================================
                                      :  (kgSelector)
                                      ? SizedBox(
                                        width: w,
                                        height: 300,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              height: 300,
                                              child: ListWheelScrollView(
                                              itemExtent: 40,
                                              perspective: 0.01,
                                              diameterRatio: 2.5,
                                              squeeze: 1,

                                              // controller: contoller1,
                                              onSelectedItemChanged: (val){
                                                kg_weight_tmp = (double.parse(val.toString())+30);
                                                // debugPrint("hh ${cm_height_tmp+30}");
                                              },
                                              children:List.generate(270, (index) => Container(
                                                height: 100,
                                                width: 100,
                                                alignment: Alignment.center,
                                                child: Text("${index+30}",style: TextStyle(fontSize: 32,color: theme_1),),
                                              ))
                                          ),
                                        ),
                                         SizedBox(
                                          width: 120,
                                          height: 300,
                                          child: ListWheelScrollView(
                                              itemExtent: 40,
                                              perspective: 0.01,
                                              diameterRatio: 2.5,
                                              squeeze: 1,

                                              // controller: contoller1,
                                              onSelectedItemChanged: (val){
                                                kg_grams_weight_tmp = (double.parse(val.toString()));
                                              },
                                              children:List.generate(10, (index) => Container(
                                                height: 100,
                                                width: 100,
                                                alignment: Alignment.center,
                                                child: Text("${index}",style: TextStyle(fontSize: 32,color: theme_1),),
                                              ))
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                      : SizedBox(
                                        width: w,
                                        height: 300,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              height: 300,
                                              child: ListWheelScrollView(
                                                  
                                                  itemExtent: 40,
                                                  perspective: 0.01,
                                                  diameterRatio: 2.5,
                                                  squeeze: 1,
                                                  onSelectedItemChanged: (val){
                                                    lb_weight_tmp = (double.parse(val.toString())+22);
                                                    // debugPrint("hh ${cm_height_tmp+30}");
                                                  },
                                                  children:List.generate(638, (index) => Container(
                                                    height: 100,
                                                    width: 100,
                                                    alignment: Alignment.center,
                                                    child: Text("${index+22}",style: TextStyle(fontSize: 32,color: theme_1),),
                                                  ))
                                              ),
                                            ),
                                            SizedBox(
                                                width: 120,
                                                height: 300,
                                              child: ListWheelScrollView(
                                              itemExtent: 40,
                                              perspective: 0.01,
                                              diameterRatio: 2.5,
                                              squeeze: 1,
                                              // controller: contoller1,
                                              onSelectedItemChanged: (val){
                                                lb_grams_weight_tmp = (double.parse(val.toString()));
                                              },
                                              children:List.generate(10, (index) => Container(
                                                height: 100,
                                                width: 100,
                                                alignment: Alignment.center,
                                                child: Text("${index}",style: TextStyle(fontSize: 32,color: theme_1),),
                                              ))
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Visibility(
              visible: Calculate_Result_visibility,

                child: Container(
                  width: w,
                  height: h,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 200,),
                      Container(
                        width: 350,
                        height: 350,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  onPressed: (){
                                  setState(() {
                                    Calculate_Result_visibility = false;
                                  });
                              },
                                icon: Icon(Icons.close,size: 30,color: Colors.grey.shade400,),
                              ),
                            ),
                            Text("Your BMI is ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black54),),
                            SizedBox(height: 20,),
                            Text("${BMI.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: theme_2),),
                            SizedBox(height: 20,),
                            Container(
                              // width: 400,
                              // height: 50,
                              // alignment: Alignment.center,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 302,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.black)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 75,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                                          ),
                                        ),
                                        Container(
                                          width: 75,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.lightGreen,
                                          ),
                                        ),
                                        Container(
                                          width: 75,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Container(
                                          width: 75,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 302,
                                    height: 32,
                                    // color: Colors.red,
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: (BMI < 18.5) ? (75*BMI/100)
                                              :(BMI >= 18.5 && BMI <= 24.9) ? (75+(75*BMI/100))
                                          :(BMI >= 25 && BMI <= 29.9) ? (75+75+(75*BMI/100))
                                          :(BMI >= 30) ? (75+75+75+(75*BMI/100)) : 0,
                                        ),
                                        Container(
                                          width: 6,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: theme_2,
                                              border: Border.all(color: Colors.white),
                                              borderRadius: BorderRadius.circular(3)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 15,),
                            
                            Text("$BMIRange",style: TextStyle(color: BMICatColor,fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("BMI Range: $BMICategories",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),


                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}
