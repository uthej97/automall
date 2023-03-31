import 'package:flutter/material.dart';
import 'package:automall/authentication/signup.dart';
import 'package:automall/authentication/login.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showLoginPage = true;
  void toggleView() {
    setState(() => showLoginPage = !showLoginPage);
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage)
    {
      return Login(toggleView: toggleView);
    }
    else
    {
      return SignUp(toggleView: toggleView);
    }
  }
}