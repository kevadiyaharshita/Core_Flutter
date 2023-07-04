import 'package:flutter/material.dart';
import 'package:timer_app/utils/Routes_util.dart';
import 'package:timer_app/views/screens/Home_Page.dart';

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
      theme: ThemeData(
        useMaterial3: true
      ),
      routes: {
        MyRoutes.home:(context) => const HomePage(),
      }
    );
  }
}
