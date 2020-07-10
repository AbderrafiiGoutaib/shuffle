import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shuffle/services/auth.dart';
import './MenuBar.dart';
import './Quiz.dart';
import './Camera.dart';



class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Auth _auth = Auth();

    return Scaffold(
//      drawer: Drawer(
//        child: ListView(
//          children: <Widget>[
//            new DrawerHeader(
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        colors: [Colors.lightBlue,Colors.white]
//                    )
//                ),
//                child: Center(
//                  child: CircleAvatar(
//                    backgroundImage: AssetImage('img/abderrafii.jpg'),
//                    backgroundColor: Colors.white,
//                    radius: 40.0,
//
//                  ),
//                )),
//            ListTile(
//              title: Text('Quiz',
//                style: TextStyle(fontSize: 15),),
//              onTap: (){
//                Navigator.of(context).pop();
//                Navigator.push(context,MaterialPageRoute(
//                    builder: (context)=>Quiz()
//                ));
//              },
//            ),
//            SizedBox(height: 10.0,),
//            Divider(color: Colors.lightBlue,),
//            ListTile(
//              title: Text('Gallery',style: TextStyle(fontSize: 15),),
//              onTap: (){},
//            ),
//            SizedBox(height: 10.0,),
//            Divider(color: Colors.lightBlue,),
//            ListTile(
//              title: Text('Weather',style: TextStyle(fontSize: 15),),
//              onTap: (){},
//            ),
//            SizedBox(height: 10.0,)
//            ,Divider(color: Colors.lightBlue,)
//            ,ListTile(
//              title: Text('Camera',style: TextStyle(fontSize: 15),),
//              onTap: (){},
//            )
//          ],
//        ),
//      ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Padding(padding:EdgeInsets.only(left:15.0, right:15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings), onPressed: (){},color: Colors.lightBlue,),
                Container(
                  //padding: EdgeInsets.fromLTRB(240, 200.0, 0.0, 0.0),
                  child: Text(
                    'MyApp',

                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.5),
                      image: DecorationImage(
                          image: AssetImage(''),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.exit_to_app), onPressed: () async{
                  await _auth.signOut();
                },color: Colors.lightBlue,)
              ],
            ),
          ),
          SizedBox(height: 3.0,),
          Container(
            padding: EdgeInsets.fromLTRB(15.5, 5.0, 0.0, 0.0),
            child: Text(
              'La liste Des Sports',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',color: Colors.lightBlue,),
            ),
          ),

          SizedBox(height: 7.0,),
          Container(
            height: 250.0,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildListItem('img/sports/Footing.jpg','Footing'),
                buildListItem('img/sports/Football.jpg','Football'),
                buildListItem('img/sports/Basketball.jpg','Basketball'),
                buildListItem('img/sports/Box.jpg','Box'),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Best Exercices',style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Colors.lightBlue)),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0),
            child:
            Container(
              height: 200.0,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                  image: DecorationImage(
                      image: AssetImage('img/sports/cardio.jpg'),
                      fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )


              ),

            ),

          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0),
            child:
            Container(
              height: 200.0,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                  image: DecorationImage(
                      image: AssetImage('img/sports/fitness.jpg'),
                      fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )


              ),

            ),

          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0),
            child:
            Container(
              height: 200.0,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                  image: DecorationImage(
                      image: AssetImage('img/sports/muscu.jpg'),
                      fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )


              ),

            ),

          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0),
            child:
            Container(
              height: 200.0,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                  image: DecorationImage(
                      image: AssetImage('img/sports/bar.jpg'),
                      fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )


              ),

            ),

          ),
          SizedBox(height: 10.0,),


        ],
      ),

      bottomNavigationBar:MenuBar(),

    );
  }
  Widget buildListItem(String imgPath,String sportGender){
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.only(left :20.0, top:8.0,right: 20.0, bottom:10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Colors.lightBlue.withOpacity(0.2),
                  spreadRadius: 5.0,
                )
              ]
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 170.0,
                decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    colors: [Colors.white,Color(0xFFACBEA3)],
//                    begin: Alignment.topLeft,
//                    end: Alignment.bottomRight
//                  ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )
                ),
              ),

              Hero(tag: imgPath,
                child: Container(

                  height: 175.0,

                  decoration: BoxDecoration(

                      image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.contain
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )
                  ),

                ),
              ),
              Positioned(
                top: 190,
                left: 60,
                child: Center(
                  child: Text(sportGender,
                    style: TextStyle(fontSize: 20,fontFamily: 'Montserrat'),
                  ),

                ) ,



              )


            ],
          ),
        ),
      ),
    );
  }
}
