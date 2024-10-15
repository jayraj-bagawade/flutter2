import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override      
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'flutter demo',
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override     
  State<MyHomePage> createState()=>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  void openBottomSheet(){
    showModalBottomSheet(
      context:context,
      builder:(context){
        return  Column(
          children: [
            const Text(
              "Bottom Sheet demo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 200,
               color:Colors.amber,
            ),
          ],
        );
      },
    );
  }
  @override     
  Widget build (BuildContext context){
    return  Scaffold(
      appBar:AppBar(
        title: const Text(
          "Demo",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:const Center(
        child: Text(
          "Demo",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          openBottomSheet();
        },
        child: const Icon(Icons.add),
    ),
    );
  }
}
