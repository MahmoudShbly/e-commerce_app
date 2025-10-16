
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  User? get currntUser;
  Stream <User?> authStateChanges();
  Future<User?> loginWithEmailAndPassword (String email,String password);
  Future<User?> signUpWithEmailAndPassword (String email,String password);

}