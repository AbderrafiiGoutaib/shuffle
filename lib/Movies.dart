import 'package:flutter/material.dart';
import './MoviesDetails.dart';
import './MenuBar.dart';
class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  String movie="" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200.0,
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20.0, top: 35.0, right: 20.0),
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.zero,
                      image: DecorationImage(
                          image: AssetImage('img/mve.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Entrez votre Film',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue))),
              onChanged: (value){
                setState(() {
                  this.movie=value;
                });
              },
            ),
          ),
//
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.blueAccent,
              color: Colors.lightBlue,
              elevation: 7.0,
              child: (GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context)=>MoviesDetails(movie)));
                },
                child: Center(
                  child: (Text(
                    'Chercher',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  )),
                ),
              )),
            ),
          ),

        ],
      ),
      bottomNavigationBar:MenuBar(),
    );
  }
}
