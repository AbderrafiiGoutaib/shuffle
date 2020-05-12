import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuBar.dart';

class CameraP extends StatelessWidget {
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
                    'Camera',
                    style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 35.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(15.5, 110.0, 0.0, 0.0),
                  child: Text(
                    'Smile to the Camera ',
                    style: TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.indigoAccent),
                  ),

                ),SizedBox(height: 10.0,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.lightBlue,
                    elevation: 7.0,
                    child: (GestureDetector(
                      onTap: () {

                      },
                      child: Center(
                        child: (Text(
                          'Add your Smile ',
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
          )
        ],
      ),
      bottomNavigationBar:MenuBar(),
    );
  }
}
