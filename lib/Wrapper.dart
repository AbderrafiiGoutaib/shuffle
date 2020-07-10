import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shuffle/services/auth.dart';

import 'Accueil.dart';
import 'Authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //return either home or authenticate widget

    return user == null ? Authenticate() : Accueil();
  }
}
