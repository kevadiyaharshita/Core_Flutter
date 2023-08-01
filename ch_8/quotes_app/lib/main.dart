import 'package:flutter/material.dart';
import 'package:quotes_app/utils/MyRoutes.dart';
import 'package:quotes_app/utils/color_utils.dart';

import 'Views/screens/Home_Pade.dart';

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
        useMaterial3: true,
        colorSchemeSeed: theme_1,
      ),

    routes: {
      MyRoutes.home: (context) => const HomePage(),
    }
    );
  }
}
