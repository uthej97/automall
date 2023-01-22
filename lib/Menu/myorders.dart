import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'My orders page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}