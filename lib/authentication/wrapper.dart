import 'package:automall/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:automall/authentication/authenticate.dart';
import 'package:automall/Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:automall/authentication/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final person = Provider.of<Userrr>(context);
    print(person);

    //return home or authenticate widget
    if (person == null)
    {
      return Authenticate();
    }
    else
    {
      return Homepage();
    }
  }
}