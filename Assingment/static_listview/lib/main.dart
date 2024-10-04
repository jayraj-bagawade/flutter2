import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override      
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text(
            "static listView",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color:Colors.orange,
            )
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network("https://i.pinimg.com/736x/07/f8/60/07f86044e76b99d169e4245741119ac5.jpg"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.pink,
              ),
            ),
              Image.network("https://i.pinimg.com/736x/07/f8/60/07f86044e76b99d169e4245741119ac5.jpg"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.pink,
              ),
            ),
              Image.network("https://i.pinimg.com/736x/07/f8/60/07f86044e76b99d169e4245741119ac5.jpg"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.pink,
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Pressed me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}