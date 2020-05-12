import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shuffle/Accueil.dart';
class CoronaStats extends StatefulWidget {
  @override

  _CoronaStatsState createState() => _CoronaStatsState();
}

class _CoronaStatsState extends State<CoronaStats> {
  var corona ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getStats();
  }
  void getStats(){
    String url = "https://corona-virus-stats.herokuapp.com/api/v1/cases/countries-search";
     http.get(url).then((value){
       setState(() {
         this.corona= jsonDecode(value.body);
       });
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,



        appBar: AppBar(

          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text(
              'Corona Stats',
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
                    builder: (context)=>Accueil()));
                // do something
              },
            )
          ],
        ) ,

        body:(corona==null? Center(child: CircularProgressIndicator(),):
        ListView.builder(



          itemCount: (corona==null?0:corona['data'].length),
          itemBuilder: (context,index){
              print(index);
            return buildListItem(index);
          },
        )
        )

    );
  }

  Widget buildListItem(int index) {


    return Column(

      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(corona['data']['rows'][index]['flag']),
                  fit: BoxFit.contain
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0) )
          ),
        ),

        SizedBox(height: 5.0),
        Row(
          children: <Widget>[

            SizedBox(width: 135.0,),
            Container(

              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(corona['data']['rows'][index]['country'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,

                    ),),SizedBox(height: 2.0),
                  Text('total cases : '+ corona['data']['rows'][index]['total_cases'],
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  SizedBox(height: 2.0),
                  Text('total deaths : '+corona['data']['rows'][index]['total_deaths'],

                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),

                  ),
                  SizedBox(height: 2.0),
                  Text('active cases : '+corona['data']['rows'][index]['active_cases'],

                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  SizedBox(height: 2.0),
                  Text('total recovered : '+corona['data']['rows'][index]['total_recovered'],

                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),),
                  SizedBox(height: 2.0),



                ],
              ),
            )
          ],)
      ],
    );
  }
}
