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
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar:MenuBar(),
    );
  }
}
