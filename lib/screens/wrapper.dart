import 'package:brew_crew/screens/authentication/authenticate.dart';
import 'package:flutter/material.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Return after Home or Authenticate
    return Authenticate();
  }
}
