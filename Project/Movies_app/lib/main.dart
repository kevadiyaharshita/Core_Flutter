import 'package:flutter/material.dart';
import 'package:movies_app/utils/route_utils.dart';
import 'package:movies_app/views/screens/home_Page.dart';
import 'package:movies_app/views/screens/save_Page.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.savePage: (context) =>  save_Page(),
        // MyRoutes.cartPage: (context) => const cartPage(),
      },
    );
  }
}