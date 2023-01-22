import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'profile page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}