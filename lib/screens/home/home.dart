import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

import '../../global.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBrown,
        elevation: 0.0,
        title: Text("Brew Crew"),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text(""))
        ],
      ),
    );
  }
}
