import 'package:flutter/material.dart';

class feedback extends StatelessWidget {
  const feedback({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'Feedback page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}