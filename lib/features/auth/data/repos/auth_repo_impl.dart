
import 'package:ecommerce_app/features/auth/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Stream<User?> authStateChanges() =>_firebaseAuth.authStateChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    UserCredential userAuth = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userAuth.user;
  }

  @override
  Future<User?> signUpWithEmailAndPassword(String email, String password)async {
    UserCredential userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
      
      email: email,
      password: password,
    );
    return userAuth.user;
  }
}
