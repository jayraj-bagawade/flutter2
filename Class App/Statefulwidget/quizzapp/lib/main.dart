import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override   
  Widget build (BuildContext context){
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home:QuizzApp(),
    );
  }
}
class QuizzApp extends StatefulWidget{
  const QuizzApp({super.key});
  @override
  State createState()=>_QuizzAppState();
}
class _QuizzAppState extends State{
  List<Map>allQuestions = [
    {
      "Question":"Q.1 Who is the founder of MicroSoft?",
      "Options":['Steve jobs','Bill Gates','Larry Page','Elon Musk'],
      "CorrectOption":1
    },
    {
      "Question":"Q.2 Who is the founder of SpaceX?",
      "Options":['Steve jobs','Bill Gates','Larry Page','Elon Musk'],
      "CorrectOption":3
    },
    {
      "Question":"Q.3 Who is the founder of Google?",
      "Options":['Steve jobs','Bill Gates','Larry Page','Elon Musk'],
      "CorrectOption":2
    },
    {
      "Question":"Q.4 Who is the founder of Meta?",
      "Options":['Steve jobs','Bill Gates','Mark Zuckerberg','Elon Musk'],
      "CorrectOption":2
    },
    {
      "Question":"Q.5Who is the founder of Apple?",
      "Options":['Steve jobs','Bill Gates','Larry Page','Elon Musk'],
      "CorrectOption":0
    }
  ];
  int currentQuestionIndex = 0;
  int selectAnswer = -1;
  int score = 0;
  WidgetStatePropertyAll<Color?> checkAnswer(int answerIndex){
    if(selectAnswer != -1){
      if(answerIndex==allQuestions[currentQuestionIndex]["CorrectOption"]){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectAnswer == answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }
  bool questionpage = true;
  @override
  Widget build(BuildContext context){
    return isQuestionsScreen();
  }
  Scaffold isQuestionsScreen(){
    if(questionpage==true){
      return  Scaffold(
      appBar:AppBar(
        title:const Text("QuizzApp",
        style:TextStyle(
          fontSize:35,
          fontWeight:FontWeight.w900,
          color:Colors.orange,
        )
        ),
        centerTitle:true,
        backgroundColor: Colors.blue, 
      ),
      body: Column(children: [
       const SizedBox(
          height:50,
        ),
        Row(
          children: [
           const SizedBox(
              width:105,
            ),
            Text(
              "Questions No: ${currentQuestionIndex + 1}/${allQuestions.length}",
              style:const TextStyle(
                fontSize:20,
                fontWeight:FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height:60,),
         Text(
          allQuestions[currentQuestionIndex]["Question"],
          style:const TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w400,
          ),
         ),
         const SizedBox(height:30),
          SizedBox(
          height:50,
          width:350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed: () {
              if(selectAnswer == -1){
                selectAnswer = 0;
                setState( () {});
              }
            },
            child: Text(
              allQuestions[currentQuestionIndex]["Options"][0],
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
         ),
         const SizedBox(height:30),
          SizedBox(
          height:50,
          width:350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed: () {
               if(selectAnswer == -1){
                selectAnswer = 1;
                setState( () {});
              }
            },
            child: Text(
              allQuestions[currentQuestionIndex]["Options"][1],
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
         ),
         const SizedBox(height:30),
          SizedBox(
          height:50,
          width:350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed: () {
               if(selectAnswer == -1){
                selectAnswer = 2;
                setState( () {});
              }
            },
            child: Text(
              allQuestions[currentQuestionIndex]["Options"][2],
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
         ),
         const SizedBox(height:30),
          SizedBox(
          height:50,
          width:350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            onPressed: () {
               if(selectAnswer == -1){
                selectAnswer = 3;
                setState( () {});
              }
            },
            child: Text(
              allQuestions[currentQuestionIndex]["Options"][3],
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
         ),
         const SizedBox(height:30),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          if(selectAnswer!=-1){
             if(selectAnswer==allQuestions[currentQuestionIndex]["CorrectOption"]){
          score++;
          }
           if(currentQuestionIndex<allQuestions.length-1){
          currentQuestionIndex++;
         }else{
          questionpage = false;
         }
         selectAnswer=-1;
         setState((){});
          }
        },
          backgroundColor: Colors.red,
          child: const Icon(Icons.forward,color: Colors.green,),
         ),
    );
    }else{
      return Scaffold(
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Reasult",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color:Colors.orange,
            ),
            ),
        ),
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmcGoDIKtigbb_4lAsSO0qyUPDi94Y7JPhrg&s"),
            const SizedBox(height: 30,),
            const Text(
              "Congratulation",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
             const SizedBox(height: 20,),
              Text(
              "Score: ${score}/${allQuestions.length}",
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
             ),
          ],
          )
        ),
        
      );

    }
  }
}
