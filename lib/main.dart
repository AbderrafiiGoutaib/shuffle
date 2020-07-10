import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuffle/Wrapper.dart';
import 'package:shuffle/services/auth.dart';
import './Accueil.dart';
import './Register.dart';

import 'Authenticate.dart';


void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Auth().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

//void main(){
//  runApp(MaterialApp(home:MyHomePage(),));
//}
//class MyHomePage extends StatefulWidget{
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ;
//  }
//}
