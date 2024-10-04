import "package:flutter/material.dart";
void main(){
  runApp(const mainApp());
}
class mainApp extends StatelessWidget{
  const mainApp({super.key});

  @override    
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "space Between",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color:Colors.orange,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
              color: Colors.red,
              height: 150,
              width:150,
            ),
             Container(
              color: Colors.red,
              height: 150,
              width:150,
            ),
          ],
        ),
      ),
    );
  }
}
  
