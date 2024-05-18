import 'package:firebase_auth/firebase_auth.dart';
import 'package:pop_quiz/services/auth/auth_service.dart';

class FirebaseAuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthServiceImpl(this._firebaseAuth);

  @override
  Future<void> signIn(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<bool> isSignedIn() async {
    return _firebaseAuth.currentUser != null;
  }
}
