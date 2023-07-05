import 'dart:math';

import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';
import 'package:timer_app/utils/colors_utils.dart';

import '../../utils/flag_lap.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int sec = 0;
  int min = 0;
  int hour = 0;
  int mmin = 0;
  double h_cnt=0;

  int live_sec = 0;
  int live_min = 0;
  int live_hour = 0;

  bool isRunning = false;
  bool isselectedTime = false;

  bool timer = false;
  bool straps = false;
  bool analog = false;
  bool digital = false;
  bool reverse_timer = false;

  int r_sec = 0;
  int r_min = 0;

  int? tmp_sec;
  int? tmp_min;

  bool isreverse_pause = false;

  startReverseTimer()
  {
    if(isselectedTime && (!isreverse_pause))
    {
      Future.delayed(
          const Duration(seconds: 1),
              (){
            setState(() {
             if(r_min != 0)
               {
                 if(r_sec == 0)
                   {
                     r_sec = 59;
                     r_min = r_min - 1;
                   }
                 else
                   {
                     r_sec = r_sec - 1;
                   }
               }
             else if(r_sec != 0)
               {
                 r_sec = r_sec - 1;
               }
            });
            startReverseTimer();
          }
      );
    }
  }


  startTimer(){
   if(isRunning)
     {
       Future.delayed(
           const Duration(seconds: 1),
               (){
             setState(() {
               sec++;
               if(sec > 59)
               {
                 sec = 0;
                 min++;
                 h_cnt = min / 60;
               }
               if(min > 59)
               {
                 min = 0;
                 mmin = 0;
                 hour++;
                 h_cnt=0;
               }

             });
             startTimer();
           }
       );
     }
  }

  startLiveTimer()
  {
    Future.delayed(
        const Duration(milliseconds: 1),
            (){
          setState(() {
            live_sec = DateTime.now().second;
            live_min = DateTime.now().minute;
            live_hour = DateTime.now().hour % 12;
          });
          startLiveTimer();
        }
    );
  }

  Widget numbers_clock(double w)
  {
    return Visibility(
      visible: timer || analog || reverse_timer,
      child: Stack(
        children: List.generate(60, (index) => Transform.rotate(
          angle: (index * (pi * 2)) / 60,
          child: Divider(
            thickness: (index % 5 == 0) ? 3 : 1,
            color:  (index % 5 == 0) ? f_button: Colors.white,
            endIndent:  (index % 5 == 0) ? w * 0.88 : w * 0.91,
            indent: 20,
          ),
        )),
      ),
    );
  }

  Widget circle_avatar()
  {
    return  Visibility(
        visible: timer || analog||reverse_timer,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
        )
    );
  }

  @override
  void initState() {
     startLiveTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size s=MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Clock App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: Drawer(
        // width: 300,
        backgroundColor: Colors.black,
        // shape: CircleBorder(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                color: Colors.black
                ),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: NetworkImage("https://i.pinimg.com/564x/a3/f6/33/a3f633158efd6f9b2348adad7fd96c34.jpg"),
                  radius: 10,
                ),
                accountName: Text("3264_HARSHITA KEVADIYA"),
                accountEmail: Text("kevadiyaharshita@gmail.com"),
              ),
            ),

            ListTile(
              title: Text("Digital Clock",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: f_button,
                value: digital,
                onChanged: (val){
                  setState(() {
                    digital = val;
                    timer = false;
                    reverse_timer = false ;
                    analog = false;
                  });
                },
              ),
            ),

            ListTile(
              title: Text("Analog Live",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: f_button,
                value: analog,
                onChanged: (val){
                  setState(() {
                    analog = val;
                    timer = false;
                    reverse_timer = false;
                    digital = false;

                  });
                },
              ),
            ),

            ListTile(
              title: Text("Timer",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: f_button,
                value: timer,
                onChanged: (val){
                  setState(() {
                    timer = val;
                    reverse_timer=false;
                    analog = false;
                    digital = false;
                    straps = false;
                  });
                },
              ),
            ),

            ListTile(
              title: Text("Reverse Timer",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: f_button,
                value: reverse_timer,
                onChanged: (val){
                  setState(() {
                    reverse_timer = val;
                    timer = false;
                    analog = false;
                    straps = false ;
                    digital = false;
                    isselectedTime = false;
                    isreverse_pause = false;
                  });
                },
              ),
            ),

            ListTile(
              title: Text("Straps",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
              trailing: Switch(
                activeColor: Colors.white,
                activeTrackColor: Colors.red,
                value: straps,
                onChanged: (val){
                  setState(() {
                    straps = val;
                    timer = false;
                    reverse_timer = false;
                  });
                },
              ),
            ),


          ],
        ),
      ),
      body: Center(
        child: (timer || reverse_timer || straps || digital || analog )?
        Stack(
          alignment: Alignment.center,
          children:[

            // timer
            Visibility(
              visible: timer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 // mainAxisSize: MainAxisSize.min,
                children: [
                    SizedBox(height: 30,),
                  Stack(
                  alignment: Alignment.center,

                  children: [

                       numbers_clock(w),
                       Transform.rotate(
                        angle:( sec * (pi * 2) / 60)  + pi / 2,
                        child: Divider(
                          color: Colors.red,
                          thickness: 2,
                          indent: 30,
                          endIndent: w / 2,
                        ),
                      ),
                      circle_avatar(),
                      Transform.rotate(
                        angle: (min * (pi * 2) / 60)+ pi /2,
                        child: Divider(
                          color: Colors.white,
                          thickness: 3,
                          indent: 40,
                          endIndent: w / 2,
                        ),
                      ),

                      Transform.rotate(
                        angle: ((hour+h_cnt) * (pi * 2) / 12) + pi / 2,
                        child: Divider(
                          color: Colors.white,
                          thickness: 5,
                          indent: 65,
                          endIndent: w / 2,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 50,),
                  Container(
                    width: w,
                    height: 200,
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),

                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                           Divider(
                             color: divider_color,
                           ),
                          ...flag_timer.map((e) => Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Flag ${flag_timer.indexOf(e)+1}",style: TextStyle(fontSize: 18,color: Colors.white),),
                                  Text("$e",style: TextStyle(fontSize: 18,color: Colors.white),),
                                ],

                              ),
                              Divider(color: divider_color,),
                            ],
                          )
                          ),

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),

            // reverse timer
            Visibility(
              visible: reverse_timer,
              child: ((!isselectedTime) && (!isreverse_pause))?
              Visibility(
                visible: !isselectedTime,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButton(
                      hint: Text("Minutes",style: TextStyle(color: Colors.grey),),
                      value: tmp_min,
                      dropdownColor: Colors.black54,
                      style: TextStyle(color: Colors.grey,fontSize: 18),
                      items: List.generate(59, (index) =>
                      DropdownMenuItem(
                      value: index,
                      child: Text("$index"))
                      ),
                      onChanged: (value) {
                      setState(() {
                      r_min=int.parse(value.toString());
                      tmp_min=value;
                      });
                      },
                      ),
                      DropdownButton(
                        itemHeight: 50,
                      hint: Text("Seconds",style: TextStyle(color: Colors.grey),),
                      value: tmp_sec,
                      dropdownColor: Colors.black54,
                      style: TextStyle(color: Colors.grey,fontSize: 18),
                      items: List.generate(59, (index) =>
                      DropdownMenuItem(
                      value: index,
                      child: Text("$index"))
                      ),
                      onChanged: (value) {
                      setState(() {
                      r_sec=value!;
                      tmp_sec=value;
                      });
                      },
                      ),

                  ],
                ),
              ):
              Visibility(
                visible: isselectedTime || (isreverse_pause && (!isselectedTime)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 30,),
                    Stack(
                      alignment: Alignment.center,

                      children: [
                        numbers_clock(w),

                        Transform.rotate(
                          angle:( r_sec * (pi * 2) / 60)  + pi / 2,
                          child: Divider(
                            color: Colors.red,
                            thickness: 2,
                            indent: 30,
                            endIndent: w / 2,
                          ),
                        ),
                        circle_avatar(),
                        Transform.rotate(
                          angle: (r_min * (pi * 2) / 60)+ pi /2,
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                            indent: 40,
                            endIndent: w / 2,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 50,),
                    Container(
                      width: w,
                      height: 200,
                      padding: EdgeInsets.all(10),

                      decoration: BoxDecoration(
                        color: Colors.black54,
                      ),

                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Divider(color: divider_color,),
                            ...flag_reverse_timer.map((e) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Flag ${flag_reverse_timer.indexOf(e)+1}",style: TextStyle(fontSize: 18,color: Colors.white),),
                                    Text("$e",style: TextStyle(fontSize: 18,color: Colors.white),),
                                  ],
                                ),
                                Divider(color: divider_color,),
                              ],
                            )
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),


            // straps
            Visibility(
              visible: straps,
              child: Stack(
                children:[
                  Transform.scale(
                    scale: 9,
                    child: CircularProgressIndicator(
                    color: f_button,
                    value: live_sec.toDouble() / 60,
                    strokeWidth: 1.5,

                    ),
                  ),


                  Transform.scale(
                    scale: 8,
                    child: CircularProgressIndicator(
                      color: Colors.lightGreen,
                      value: live_min.toDouble() / 60,
                      strokeWidth: 1.7,
                    ),
                  ),

                  Transform.scale(
                    scale: 7.1,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      value: (live_hour.toDouble()+ live_min/60) / 12,
                      strokeWidth: 2,
                    ),
                  ),
                ]
              ),
            ),

            //analog
            Visibility(
              visible: analog,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  numbers_clock(w),
                  circle_avatar(),
                  Transform.rotate(
                    angle:( live_sec * (pi * 2) / 60)  + pi / 2,
                    child: Divider(
                      color: Colors.red,
                      thickness: 2,
                      indent: 35,
                      endIndent: w / 2,

                    ),
                  ),

                  Transform.rotate(
                    angle: (live_min * (pi * 2) / 60)+ pi /2,
                    child: Divider(
                      color: Colors.white,
                      thickness: 3,
                      indent: 55,
                      endIndent: w / 2,
                    ),
                  ),

                  Transform.rotate(
                    angle: ((live_hour + (live_min / 60)) * (pi * 2) / 12) + pi / 2,
                    child: Divider(
                      color: Colors.white,
                      thickness: 5,
                      indent: 70,
                      endIndent: w / 2,
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 50,),
            //Digital
            Visibility(
              visible: digital,
                child: Text("${live_hour.toString().padLeft(2,"0")}  : ${live_min.toString().padLeft(2,"0")} : ${live_sec.toString().padLeft(2,"0")}",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 32,color: f_button),)),


          ]
        )
        :Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/images/e5678c51e73601b5dae68d3ff73d9d43.jpg'),
              // fit: BoxFit.contain
            )
          ),
        ),
      ),
      backgroundColor: Colors.black54,
      floatingActionButton: Visibility(
        visible: timer || reverse_timer,

        child: Row(
           // mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 8,),
            FloatingActionButton(
              backgroundColor:f_button,
              onPressed: (){
                if(isRunning == true)
                  {
                    flag_timer.add("${hour.toString().padLeft(2,'0')} : ${min.toString().padLeft(2,'0')} : ${sec.toString().padLeft(2,'0')}");
                  }
                if(isselectedTime == true)
                  {
                    flag_reverse_timer.add("${r_min.toString().padLeft(2,'0')} : ${r_sec.toString().padLeft(2,'0')}");
                  }
              },
              child: Icon(Icons.flag,color: Colors.black54,),
            ),

            SizedBox(width: 15,),
            FloatingActionButton(
              backgroundColor:f_button,
              onPressed: (){
                if(isRunning)
                  {
                    isRunning = false;
                  }
                if(isselectedTime)
                  {
                    flag_reverse_timer = [];
                    isselectedTime = false;
                    isreverse_pause = false;
                    tmp_sec = null;
                    tmp_min = null;
                  }
              },
              child:(timer)? Icon(Icons.stop,color: Colors.black54,):Icon(Icons.restart_alt,color: Colors.black54,),
            ),

            SizedBox(width: 15,),
            FloatingActionButton(
              backgroundColor:(isselectedTime)?Colors.green:f_button,
              onPressed: (){
                if((! isRunning ) && timer)
                  {
                    isRunning = true;
                    startTimer();
                  }
                if((! isselectedTime) && reverse_timer)
                  {
                    isselectedTime = true;
                    isreverse_pause = false;
                    startReverseTimer();
                  }
                else if(isselectedTime && reverse_timer)
                  {
                    isreverse_pause = true;
                    isselectedTime = false;
                  }
              },
              child: (isselectedTime)?Icon(Icons.stop,color: Colors.black54,):Icon(Icons.timer,color: Colors.black54,),
            ),
          ],
        ),
      ),
    );
  }
}


