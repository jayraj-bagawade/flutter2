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
          title: const Text("First App",
          style: TextStyle(fontStyle: FontStyle.italic,
          fontSize: 30,
          fontWeight:FontWeight.w900,
          
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: const Center(
          child: Text(
            "Incubator",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
            ),
            strutStyle: StrutStyle(leadingDistribution: TextLeadingDistribution.even),
            ),
          
        ),
   ),
);
}

}