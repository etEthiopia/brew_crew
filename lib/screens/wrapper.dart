import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/authentication/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // Return after Home or Authenticate

    print(user);
    return Authenticate();
  }
}
