import 'dart:math';

import 'package:flutter/material.dart';

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

  startReverseTimer()
  {
    if(isselectedTime)
    {
      Future.delayed(
          const Duration(milliseconds: 100),
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
           const Duration(milliseconds: 100),
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
            color:  (index % 5 == 0) ? Colors.red: Colors.white,
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
        visible: timer || analog,
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

        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  foregroundImage: NetworkImage("https://i.pinimg.com/564x/a3/f6/33/a3f633158efd6f9b2348adad7fd96c34.jpg"),
                  radius: 10,
                ),
                accountName: Text("3264_HARSHITA KEVADIYA"),
                accountEmail: Text("kevadiyaharshita@gmail.com"),
              ),
            ),

            ListTile(
              title: Text("Digital Clock"),
              trailing: Switch(
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
              title: Text("Analog Live"),
              trailing: Switch(
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
              title: Text("Timer"),
              trailing: Switch(
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
              title: Text("Reverse Timer"),
              trailing: Switch(
                value: reverse_timer,
                onChanged: (val){
                  setState(() {
                    reverse_timer = val;
                    timer = false;
                    analog = false;
                    straps = false ;
                    digital = false;
                    isselectedTime = false;

                  });
                },
              ),
            ),

            ListTile(
              title: Text("Straps"),
              trailing: Switch(
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
        child: Stack(
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

                      boxShadow: [
                        BoxShadow(

                        )
                      ]
                    ),

                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                           Divider(),
                          ...flag_timer.map((e) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Flag ${flag_timer.indexOf(e)+1}\n",style: TextStyle(fontSize: 18,color: Colors.white),),
                              Text("$e\n",style: TextStyle(fontSize: 18,color: Colors.white),),
                            ],
                          )
                          ),
                          Divider(),
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
              child: (!isselectedTime)?
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
                visible: isselectedTime,
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
                            Divider(),
                            ...flag_reverse_timer.map((e) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Flag ${flag_reverse_timer.indexOf(e)+1}\n",style: TextStyle(fontSize: 18,color: Colors.white),),
                                Text("$e\n",style: TextStyle(fontSize: 18,color: Colors.white),),
                              ],
                            )
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //
              //
              //     ],
              // ),
            ),


            // straps
            Visibility(
              visible: straps,
              child: Stack(
                children:[
                  Transform.scale(
                    scale: 9,
                    child: CircularProgressIndicator(
                    color: Colors.red,
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
                      color: Colors.grey,
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
                child: Text("$live_hour  : $live_min : $live_sec",style: TextStyle(fontSize: 22,color: Colors.lightGreen),)),


          ]
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: Visibility(
        visible: timer || reverse_timer,

        child: Row(
           // mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 8,),
            FloatingActionButton(
              backgroundColor:Colors.red,
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
              backgroundColor:Colors.red,
              onPressed: (){
                if(isRunning)
                  {
                    isRunning = false;
                  }
                if(isselectedTime)
                  {
                    flag_reverse_timer = [];
                    isselectedTime = false;
                    tmp_sec = null;
                    tmp_min = null;
                  }

              },
              child:(timer)? Icon(Icons.stop,color: Colors.black54,):Icon(Icons.restart_alt,color: Colors.black54,),
            ),

            SizedBox(width: 15,),
            FloatingActionButton(
              backgroundColor:Colors.red,
              onPressed: (){
                if((! isRunning ) && timer)
                  {
                    isRunning = true;
                    startTimer();
                  }
                if((! isselectedTime) && reverse_timer)
                  {
                    isselectedTime = true;

                    startReverseTimer();
                  }
              },
              child: Icon(Icons.timer,color: Colors.black54,),
            ),
          ],
        ),
      ),
    );
  }
}


