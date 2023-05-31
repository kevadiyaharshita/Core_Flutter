import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  Container box(Icon i)
  {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius:5,
            color: Colors.grey,
            offset: Offset(0,5),
          )
        ],
      ),
      child: i

    );
  }
  Icon i=Icon(Icons.import_contacts_outlined);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon"),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),

      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.add)),
                    box(Icon(Icons.ac_unit)),
                    box(Icon(Icons.arrow_back_ios_sharp)),
                    box(Icon(Icons.arrow_forward_ios_sharp)),
                    box(Icon(Icons.alarm)),
                    box(Icon(Icons.mail)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.cloud_done_rounded)),
                    box(Icon(Icons.person_2_rounded)),
                    box(Icon(Icons.refresh_rounded)),
                    box(Icon(Icons.settings)),
                    box(Icon(Icons.accessibility)),
                    box(Icon(Icons.account_circle_outlined)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.notification_important_sharp)),
                    box(Icon(Icons.handyman_outlined)),
                    box(Icon(Icons.upcoming)),
                    box(Icon(Icons.wallet)),
                    box(Icon(Icons.back_hand)),
                    box(Icon(Icons.menu_book)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.warning_amber)),
                    box(Icon(Icons.stop)),
                    box(Icon(Icons.play_arrow_rounded)),
                    box(Icon(Icons.call)),
                    box(Icon(Icons.search)),
                    box(Icon(Icons.security_outlined)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.restaurant_menu_rounded)),
                    box(Icon(Icons.account_balance)),
                    box(Icon(Icons.comment_bank)),
                    box(Icon(Icons.widgets)),
                    box(Icon(Icons.wifi)),
                    box(Icon(Icons.signal_cellular_connected_no_internet_0_bar)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.close_fullscreen)),
                    box(Icon(Icons.lock_clock)),
                    box(Icon(Icons.light)),
                    box(Icon(Icons.not_accessible)),
                    box(Icon(Icons.app_blocking)),
                    box(Icon(Icons.sign_language_rounded)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    box(Icon(Icons.assistant)),
                    box(Icon(Icons.accessible_forward_sharp)),
                    box(Icon(Icons.move_down)),
                    box(Icon(Icons.synagogue)),
                    box(Icon(Icons.assistant)),
                    box(Icon(Icons.sign_language_rounded)),
                  ],
                ),
              ),



            ],
          ),
        ),

      ),
    );
  }

}