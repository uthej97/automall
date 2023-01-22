import 'package:flutter/material.dart';

class MyCars extends StatelessWidget {
  const MyCars({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'My cars page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}