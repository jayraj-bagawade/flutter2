import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          body:Center(
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                height:100,
                width:100,
                color:Colors.orange,
              ),
              Container(
                height:100,
                width:100,
                color:Colors.amber,
              ),
              Container(
                height:100,
                width:100,
                color:Colors.red,
              ),
            ],
          ),
          )
        ),
      )
    );
  }
}