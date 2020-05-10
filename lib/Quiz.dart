import 'package:flutter/material.dart';

import 'MenuBar.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0 ;
  int score = 0;
  var quiz =[
    {"title":"Question 1 : Par qui a été créé React Native ?","Rep":[
      {"reponse":"Airbnb","correct":false},
      {"reponse":"Microsoft","correct":false},
      {"reponse":"Facebook","correct":true},
      {"reponse":"Google","correct":false},
      {"reponse":"Apple","correct":false},

    ]},  {"title":"Question 2 : React Native permet de développer quel type d'applications ?","Rep":[
      {"reponse":"Applications natives","correct":false},
      {"reponse":"Applications cross-platforms","correct":true},
      {"reponse":"Applications Web","correct":false},
      {"reponse":"ProgressiveWepApps","correct":false},
    ]},  {"title":"Question 3 : Quel est le langage de programmation pour développer des applications React Native ?","Rep":[
      {"reponse":"PHP","correct":false},
      {"reponse":"Swift / Objective-C","correct":false},
      {"reponse":"Java / Kotlin","correct":false},
      {"reponse":"C#","correct":false},
      {"reponse":"Javascript","correct":true},
    ]},  {"title":"Question 4 : React Native utilise les composants natifs pour créer vos vues. Vrai ou faux ?","Rep":[
      {"reponse":"Vrai","correct":true},
      {"reponse":"Faux","correct":false},
    ]}, {"title":"Question 5 : Pour créer, développer et exécuter une CRNA, de quoi a-t-on obligatoirement besoin ?","Rep":[
      {"reponse":"Node.js","correct":true},
      {"reponse":"Expo","correct":true},
      {"reponse":"Un éditeur de texte","correct":true},
      {"reponse":"Nuclide","correct":false},
    ]},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:
      (this.currentQuestion>=quiz.length) ?

      Container(
          padding: EdgeInsets.only(left: 20.0, top: 35.0, right: 20.0),
          child: Column(
              children: <Widget>[
                SizedBox(height: 250,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Votre Score est : ${(100*score/quiz.length).round()} % ', style: TextStyle( color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',fontSize: 30),
                    )
                  ],
                ),

//              SizedBox(height: 10,),
//
//              Container(
//                height: 100.0,
//                width: 100.0,
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(50),
//                    image: DecorationImage(
//                        image: AssetImage('img/abderrafii.jpg'),
//                        fit: BoxFit.cover
//                    )
//                ),
//              ),

                SizedBox(height: 10,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.lightBlue,
                    elevation: 7.0,
                    child: (GestureDetector(
                      onTap: () {
                        setState(() {
                          score=0;
                          currentQuestion=0;
                        });
                      },
                      child: Center(
                        child: (Text(
                          'Reprendre le Quiz',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        )),
                      ),
                    )),
                  ),
                ),

              ]
          )
      )



//          Center(
//            child: Column(
//              children: <Widget>[
//
//                Text(
//                      'Votre Score est : ${(100*score/quiz.length).round()} % ' ,
//                      style: TextStyle(
//                          color: Colors.black38,
//                          fontWeight: FontWeight.bold,
//                          fontFamily: 'Montserrat',fontSize: 30),
//
//                ),
//
//              ],
//            )
//
//
//
//          )
          : ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          ListTile(
            title: Center(
              child:  Text(
                'Question : ${currentQuestion+1}/${quiz.length}',
                style: TextStyle(
                    fontSize: 50.0,color: Colors.lightBlue, fontWeight: FontWeight.bold,fontFamily: 'Montserrat'),
              ),
            ),
          ),
          SizedBox(height: 100,),
          ListTile(

            title:  Text(
              quiz[currentQuestion]['title'],
              style: TextStyle(
                  fontSize: 20.0,color: Colors.grey, fontWeight: FontWeight.w900),
            ),

          ),
          SizedBox(height: 50,),

          ...(quiz[currentQuestion]['Rep'] as List<Map<String,Object>>).map((answer){

            return


              Padding(
                padding: EdgeInsets.only(left :20.0, top:8.0,right: 20.0, bottom:10.0),
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.lightBlue,
                    elevation: 7.0,
                    child: (
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ++currentQuestion;
                              if(answer['correct']==true){

                                ++score;
                              }
                            });

                            //                    Navigator.of(context).pop();
                            //                    Navigator.push(context,MaterialPageRoute(
                            //                        builder: (context)=>));
                          },
                          child:
                          Center(
                            child: (Text(
                              answer['reponse'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            )),
                          ),
                        )),
                  ),

                ),
              );
          }

          )
        ],
      ),
      bottomNavigationBar:MenuBar(),
    );
  }
}
