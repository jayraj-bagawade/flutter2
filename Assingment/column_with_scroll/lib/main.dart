import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Column With Scroll",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
             color: Colors.orange,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,
              width: 150,
              color:Colors.red,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.yellow,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.green,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.pink,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.black,
            ),
          ],
        ),
        ),
      ),
    );
  }
}

