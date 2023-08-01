import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import '../../utils/color_utils.dart';
import '../../utils/quotes_utils.dart';
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Random r = Random();

  @override
  void initState() {
    super.initState();
   getQuote();
  }

  getQuote()
  {
    int index = r.nextInt(allQuotes.length);
    Future.delayed(Duration(milliseconds: 500),(){
      showDialog(context: context,
          builder: (context) => AlertDialog(
            title: Text("Todays Quotes"),
            content: Text(allQuotes[index].quote),
            actions: [
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        child: Text("Go to APP"),
              )
            ],
          )
       );
     }
    );
  }


  String? SelectedCategory;
  int item_Count = 0;

  @override

  Widget  build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        bool  willpop = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Are you sure to Exit?"),
              content: Text(loremIpsum(words: 10)),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop(true);
                }, child: Text("YES")
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).pop(false);
                }, child: Text("NO")),
              ],
           )
        );
        return willpop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quotes App",style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          foregroundColor: theme_4,
          backgroundColor: theme_1,
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 75,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                   color: theme_1.withOpacity(1),
                ),
                child: Row(
                  children: allCategories.map(
                          (e) => GestureDetector(
                      onTap: (){
                      setState(() {
                        SelectedCategory = e;
                      });
                    },
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: (SelectedCategory == e) ? theme_4 : theme_2,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(e,style: TextStyle(color: (SelectedCategory == e) ? theme_1 :theme_4,fontSize: 16),
                      ),
                    ),
                  )).toList(),
                ),
              ),
            ),

            Expanded(
              child: ListView.separated(
                  itemCount: allQuotes.length,
                  itemBuilder: (context , index) =>
                   (allQuotes[index].category == SelectedCategory) ?
                  ListTile(
                          leading: CircleAvatar(),
                          title: Text(allQuotes[index].quote),
                          subtitle: Text(allQuotes[index].category),
                  )
                       :Container(),
                  separatorBuilder: (context, index) =>
                   (SelectedCategory == allQuotes[index].category ) ? Divider(
                    indent: 10,
                    endIndent: 10,
                  )
                       :SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//
// ElevatedButton(onPressed: (){
// showDialog(context: context, builder: (context) => AlertDialog(
// title: Text("Alert!!"),
// content: Text(loremIpsum(words: 50)),
// ));
//
// }, child: Text("Simple Dialogue Box")),
// ElevatedButton(onPressed: (){
// showDialog(
// context: context,
// barrierDismissible: false,
// builder: (context) => AlertDialog(
// title: Text("Alert!!"),
// content: Text(loremIpsum(words: 10)),
// actions: [
// ElevatedButton(onPressed: (){
// Navigator.of(context).pop();
// }, child: Text("OK")),
// TextButton(onPressed: (){
// Navigator.of(context).pop();
// }, child: Text("CANCEL")),
// ],
// )
// );
//
// }, child: Text("Confirmation Dialogue Box")),
// ElevatedButton(onPressed: (){
// showGeneralDialog(
// context: context,
// pageBuilder: (context, _, __) => Scaffold(
// body: Column(
// children: [
// Spacer(),
// FlutterLogo(size: 350,),
// Spacer(),
// Expanded(
// child: Container(
// width: double.infinity,
// child: Theme(
// data: ThemeData(),
// child: ElevatedButton(
// onPressed: (){
// Navigator.of(context).pop();
// },
// child: Text("BACK"),
// ),
//
// ),
// ),
// )
// ],
// ),
// ),
// );
//
// }, child: Text("general Dialogue Box")),


