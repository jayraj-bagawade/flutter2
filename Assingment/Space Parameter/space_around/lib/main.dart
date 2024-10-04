import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
void main(){
  runApp(const mainApp());
}
class mainApp extends StatelessWidget{
  const mainApp({super.key});

  @override     
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text(
            "Column Axisalignment",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color:Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
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
              color:Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}