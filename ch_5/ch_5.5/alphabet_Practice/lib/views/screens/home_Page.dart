import 'package:flutter/material.dart';

import '../../utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alphabets"),
       // title: Image(image: NetworkImage(t2),fit:BoxFit.cover,height: 60,width: 60, ),
        centerTitle: true,
      ),
    );
  }
}
