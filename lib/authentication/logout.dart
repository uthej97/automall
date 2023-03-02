import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'Logout page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}