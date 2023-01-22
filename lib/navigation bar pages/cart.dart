import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart page',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}