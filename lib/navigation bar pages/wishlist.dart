import 'package:flutter/material.dart';

class wishlist extends StatelessWidget {
  const wishlist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Text(
          'wishlist page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}