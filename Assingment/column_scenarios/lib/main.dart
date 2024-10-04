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
        appBar:AppBar(
          title:const Text("Column Scenarios"),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          color:Colors.red,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 100,
                color:Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );

  }
}