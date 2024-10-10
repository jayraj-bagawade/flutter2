import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override      
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue,
          title:const Text(
            "Container color gradiant",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color:Colors.red,
            ),
          ),
          centerTitle: true,
        ),
        body:Center(
          child:Container(
            height:300,
            width:300,
            alignment:Alignment.bottomLeft,
            decoration:const  BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.red,
                ],
              ),
            ),
            child:const Text(
              "Hello",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

