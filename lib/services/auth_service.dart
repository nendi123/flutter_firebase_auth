import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signUp(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Some Error Occured {$e}');
    }
    return null;
  }

  static Future<User?> signIn(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Some Error Occured {$e}');
    }

    return null;
  }
}
