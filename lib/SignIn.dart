import 'package:flutter/material.dart';
import 'package:shuffle/services/auth.dart';

import 'Register.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
  final Function toggleView;
  SignIn({ this.toggleView });
}

class _SignInState extends State<SignIn> {
  String email ='';
  String password='';
  final _final = GlobalKey<FormState>();
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
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
                    'Hello',
                    style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.5, 200.0, 0.0, 0.0),
                  child: Text(
                    'Friend',
                    style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
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
                key: _final,
                child: Column(

                  children: <Widget>[
                    TextFormField(
                      validator:(val)=>(val.isEmpty ) ? 'Enter or check your email' : null,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
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
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      validator:(val)=>(val.isEmpty )? 'Enter or check your Password' : null,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
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
                      height: 5.0,
                    ),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
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
                          onTap: () async {
                            if(_final.currentState.validate()) {

                              dynamic result = await _auth.signInWithEmailAndPassword(email, password);

                            }



//                            setState(() {
//                              if(_final.currentState.validate()) {
//                                Navigator.of(context).pop();
//                                Navigator.push(context, MaterialPageRoute(
//                                    builder: (context) => Accueil()));
//                              } });
                          },
                          child: Center(
                            child: (Text(
                              'LOGIN',
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
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black54,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('img/gmail.png')),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Center(
                              child: Text('LOGIN WITH GMAIL',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),)
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('New With Us ?', style: TextStyle(fontFamily: 'Montserrat')),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {
                  widget.toggleView();
                },
                child: Text('SingUp',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline)),
              )
            ],
          ),
        ],
      ),
    );

  }
}
