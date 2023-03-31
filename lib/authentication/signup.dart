import 'package:flutter/material.dart';
import 'package:automall/Services/auth.dart';

class SignUp extends StatefulWidget {

  final Function toggleView;
  SignUp({this.toggleView});

  @override
  State<SignUp> createState() => _SignUpState();


}


class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[400],
        elevation: 0.0,
        title: Text('Sign up'),
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign in'),
            onPressed: (){
              widget.toggleView();
            },
          )
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                    onChanged: (val){
                      setState(() => email = val);
                    }
                ),
                SizedBox(height: 20),
                TextFormField(
                    obscureText: true,
                    onChanged: (val){
                      setState(() => password = val);
                    }
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  //color: Colors.blueGrey[600],
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async{
                    print(email);
                    print(password);
                  },
                )
              ],
            ),
          )
      ),
    );
  }
}