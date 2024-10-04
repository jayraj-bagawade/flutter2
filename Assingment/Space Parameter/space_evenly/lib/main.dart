import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const mainApp());
}
class mainApp extends StatelessWidget{
  const mainApp({super.key});

  @override    
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            "space evenly",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ],
        ),
      ),
    );
  }
}