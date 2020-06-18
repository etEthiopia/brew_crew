import 'package:brew_crew/global.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  //text states
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBrown,
      appBar: AppBar(
          backgroundColor: darkBrown,
          elevation: 0.0,
          title: Text("Register in to Brew Crew")),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              key: _formKey,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white.withOpacity(0.8),
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            icon: Icon(Icons.mail),
                            border: InputBorder.none,
                            isDense: true),
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "The password cannot be empty";
                          } else {
                            Pattern pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white.withOpacity(0.8),
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            isDense: true),
                        controller: _passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "The password cannot be empty";
                          } else if (value.length < 6) {
                            return "The password length must be at least six";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white.withOpacity(0.8),
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            isDense: true),
                        controller: _passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please confirm your password";
                          } else if (value != _passwordController.text) {
                            return "Passwords doesn't match";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {}
                    },
                    color: darkBtnBrown,
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: whiteBrown),
                    ),
                  ),
                ),
              ]),
            )),
      ),
    );
  }
}
