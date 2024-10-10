
import "package:flutter/material.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp ({super.key});

  @override     
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "NETFLIX",
            style:TextStyle(
              fontSize:30,
              fontWeight:FontWeight.w900,
              color:Colors.red,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body:ListView.builder(
          itemCount:1,
          physics: const BouncingScrollPhysics(),
          itemBuilder:(BuildContext context, int index) {
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                    ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "Action",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                    const  SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "drama",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                    const  SizedBox(width: 10,),ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "Horror",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                      const  SizedBox(width: 10,),ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "Horror",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                      const  SizedBox(width: 10,),ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "Horror",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                      const  SizedBox(width: 10,),ElevatedButton(onPressed: (){},
                    style:const ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black)
                    ),
                     child: const Text(
                      "Horror",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color:Colors.white,
                      ),
                     ),
                     ),
                  ],
                 ),
                ),
                const SizedBox(height: 10,),
              
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                     Container(
                  height:450,
                  width: MediaQuery.of(context).size.width,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:450,
                  width: MediaQuery.of(context).size.width,
                  color:Colors.blue,
                ),
                  ],
                ),
               ),
            const   SizedBox(height: 10,),
             const  Text("Continue Watching"),
               SizedBox(height: 5,),
             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                     Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  ],
                ),
               ),
                const   SizedBox(height: 10,),
             const  Text("Popular On Netflix"),
             const  SizedBox(height: 5,),
             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                     Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  Container(
                  height:100,
                  width: 200,
                  color:Colors.red,
                child:Image.asset(" assets/download.jpeg"),
                ),
                 Container(
                  height:100,
                  width: 200,
                  color:Colors.blue,
                ),
                  ],
                ),
               ),
               
            
              ],
            );
          }
        ),
      ),
    );
  }
}
