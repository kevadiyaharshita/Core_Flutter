import 'package:bmi_calculator/utils/MyRoutes.dart';
import 'package:bmi_calculator/utils/color_utils.dart';
import 'package:bmi_calculator/views/screens/HomePage.dart';
import 'package:bmi_calculator/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: theme_1
      ),
      initialRoute: MyRoutes.Splash_Screen,
      routes: {
        MyRoutes.home : (context) => const HomePage(),

        MyRoutes.Splash_Screen : (context) => Splash_Screen(),
      },
    );
  }
}
