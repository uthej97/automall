import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:automall/authentication/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create use obj based on FireBaseUser
  Userrr _userFromUser1 (User user1) {

    return user1 != null? Userrr(uid: user1.uid) : null;

  }

  //auth change user stream
  Stream<Userrr> get user1{

    return _auth.authStateChanges()
        .map(_userFromUser1);
  }

  //sign-in anon
  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User user1 = result.user;
      return _userFromUser1(user1);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  //Sign out function

  Future signOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e)
    {
      print(e.toString());
      return null;
    }
  }
}