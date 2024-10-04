import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
 Widget build(BuildContext context){
  return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         
          title: const Text("CONTAINER :"
          ,
          style: TextStyle(fontStyle: FontStyle.italic,
          color: Colors.white70,
          fontSize: 50,
          fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.pink.shade300,
        ),
        body: Center(
          child: Container(
              width: 200,
              height:200,
              color: Colors.blue.shade700,

          ),
          ),
      ),
);
}
}