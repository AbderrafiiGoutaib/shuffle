import 'package:flutter/material.dart';
import './Accueil.dart';
import './main.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  String email;
  String password;
  String repassword;
  final _finalkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.5, 110.0, 0.0, 0.0),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.5, 200.0, 0.0, 0.0),
                    child: Text(
                      'Friend',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(240, 200.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 35.0, right: 20.0),
              child:Form(
                key: _finalkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (val)=>val.isEmpty?'enter your email':null,
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),

                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue))),
                    onChanged: (val){
                      setState(() {
                        email=val;
                      });
                    } ,
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    validator: (val)=>val.isEmpty?'enter your email':null,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue))),
                    onChanged: (val){
                      setState(() {
                        password=val;
                      });
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                     validator: (val)=>val.isEmpty || val==password?'perhaps your password not matched or empty':null,
                    decoration: InputDecoration(
                        labelText: 'RETYPING YOUR PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue))),
                    onChanged: (val){
                      setState(() {
                        password=val;
                      });
                    },
                    
                    obscureText: true,
                    
                  ),
                  SizedBox(height: 40.0),
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
                            if(_finalkey.currentState.validate()){
                              Navigator.of(context).pop();
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Accueil()));
                            }
                          });
                        
                        },
                        child: Center(
                          child: (Text(
                            'REGISTER',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          )),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('You have Already an Account ?', style: TextStyle(fontFamily: 'Montserrat')),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>MyHomePage()));
                        },
                        child: Text('LogIn',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
//                  Container(
//                    height: 40.0,
//                    color: Colors.transparent,
//                    child: Container(
//                      decoration: BoxDecoration(
//                        border: Border.all(
//                          color: Colors.black54,
//                          style: BorderStyle.solid,
//                          width: 1.0,
//                        ),
//                        color: Colors.transparent,
//                        borderRadius: BorderRadius.circular(20.0),
//                      ),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Center(
//                            child: ImageIcon(AssetImage('img/gmail-logo.png')),
//                          ),
//                          SizedBox(
//                            width: 10.0,
//                          ),
//                          Center(
//                            child: Text('LOGIN WITH GMAIL',
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontWeight: FontWeight.bold,
//                                    fontFamily: 'Montserrat')),
//                          )
//                        ],
//                      ),
//                    ),
//                  )
                ],
              ),)

            ),


          ],
        ));
  }
}
