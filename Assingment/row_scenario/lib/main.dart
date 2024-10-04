import "package:flutter/cupertino.dart";
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
          title:const Text(
            "Row Scenario",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color:Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          color:Colors.green,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.end,
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

