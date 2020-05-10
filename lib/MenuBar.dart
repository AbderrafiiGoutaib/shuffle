import 'package:flutter/material.dart';
import './Movies.dart';
import './Quiz.dart';
import './Camera.dart';


import './Accueil.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),

          ),
          color: Colors.lightBlue
      ),padding: EdgeInsets.only(left: 40,right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: (){
            Navigator.of(context).pop();
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>Accueil()));
          }),
          IconButton(icon: Icon(Icons.assignment,color: Colors.white,), onPressed: (){
            Navigator.of(context).pop();
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>Quiz()));
          }),
          IconButton(icon: Icon(Icons.photo_camera,color: Colors.white,), onPressed: (){
            Navigator.of(context).pop();
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>CameraP()));
          }),
          IconButton(icon: Icon(Icons.collections,color: Colors.white,), onPressed: (){
            Navigator.of(context).pop();
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>Accueil()));
          }),
          IconButton(icon: Icon(Icons.ac_unit,color: Colors.white,), onPressed: (){
            Navigator.of(context).pop();
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>Movies()));
          }),


        ],
      ),

    );
  }
}
