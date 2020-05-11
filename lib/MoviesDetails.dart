import 'dart:convert';

import 'package:flutter/material.dart';
import 'Movies.dart';
import 'package:http/http.dart' as http;

class MoviesDetails extends StatefulWidget {
  String movie ;
  MoviesDetails(this.movie);
  @override
  _MoviesDetailsState createState() => _MoviesDetailsState();
}

class _MoviesDetailsState extends State<MoviesDetails> {
  var  MoviesData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData(widget.movie);
  }
  void getData(String movie) {
    String url ="https://api.themoviedb.org/3/search/movie?query=${movie}&api_key=a11fc7af27d724eef0b2827e0ec700ed&language=fr&page=1&include_adult=false";
    http.get(url).then((res){
      setState(() {
        this.MoviesData=jsonDecode(res.body);
      });

    }).catchError((onError){
      print(onError);

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,



        appBar: AppBar(

          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text(
              widget.movie,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
            )
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context)=>Movies()));
                // do something
              },
            )
          ],
        ) ,
        body:(MoviesData==null? Center(child: CircularProgressIndicator(),):
        ListView.builder(


          itemCount: (MoviesData==null?0:MoviesData['results'].length),
          itemBuilder: (context,index){
            String img = "https://image.tmdb.org/t/p/w500/${MoviesData['results'][index]['poster_path']}";
            return buildListItem(img,index);
          },
        )
        )

    );
  }
  Widget buildListItem(String img,index){
    String   repl =MoviesData['results'][index]['overview'];

    return Column(

      children: <Widget>[

        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0) )
              ),
            ),
            SizedBox(width: 10.0,),
            Container(

              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text(MoviesData['results'][index]['title'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,

                    ),),SizedBox(height: 2.0),
                  Text(MoviesData['results'][index]['vote_average'].toString(),
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,

                    ),),
                  SizedBox(height: 2.0),
                  Text(repl,

                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),

                  ),
                  SizedBox(height: 20.0),
                  Text(MoviesData['results'][index]['release_date'],

                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,

                    ),),
                  SizedBox(height: 5.0),

                ],
              ),
            )
          ],)
      ],
    );
  }
}


