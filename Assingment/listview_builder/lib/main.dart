import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override          
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "Listview builder",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color:Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body:ListView.builder(
          itemCount: 200,
         physics: const BouncingScrollPhysics(),
         // physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder:(BuildContext ,int index){
            return  Text(
              "index: $index",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color:Colors.red,
              ),
            );
          }
        ),
      ),
    );
  }
}