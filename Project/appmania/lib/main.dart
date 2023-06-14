import 'package:appmania/utils/my_Routes_utils.dart';
import 'package:appmania/views/screens/cart_Page.dart';
import 'package:appmania/views/screens/detail_Page.dart';
import 'package:appmania/views/screens/home_Page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      routes: {
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.detailPage: (context) =>detail_Page(),
         MyRoutes.cartPage: (context) => cartPage(),
      },
    );
  }
}
