import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final auth = FirebaseAuth.instance;

  Future<User?> createUser(String email, String password) async {
    try {
      final cred = await auth.createUserWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } catch (e) {
      print(e.toString());
      throw "Error";
    }
  }

  Future<User?> loginUser(String email, String password) async {
    try {
      final cred = await auth.signInWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } catch (e) {
      print(e.toString());
      throw "Error";
    }
  }
}