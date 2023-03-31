import 'package:automall/Homepage.dart';
import 'package:automall/authentication/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Services/auth.dart';
import 'authentication/login.dart';
import 'authentication/user.dart';
import 'authentication/wrapper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Userrr>.value(
      value: AuthService().user1,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
