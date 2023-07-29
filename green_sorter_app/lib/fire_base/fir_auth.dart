import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AuthFir {
  FirebaseAuth _auth = FirebaseAuth.instance;

  void signUpWithEmailAndPassword(String email, String password, String name, String phone, Function onSuccess) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Additional logic for saving the name and phone number to the user profile, if needed.
      // For simplicity, it's not included in this example.
      print('User registered: ${userCredential.user?.email}');
    } catch (e) {
      print('Error during registration: $e');
    }
  }

  void signInWithEmailAndPassword(String email, String password, Function onSuccess) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      print('User signed in: ${userCredential.user?.email}');
    } catch (e) {
      print('Error during sign in: $e');
    }
  }

  void signOut() async {
    await _auth.signOut();
  }

  _createUser(String userId, String name, String phone, Function onSuccess) {
    var user = {
      'name': name,
      'phone': phone,
    };
    final userReference = FirebaseDatabase.instance.reference().child('users');
    userReference.child(userId).set(user).then((user) {
      onSuccess();
    });
  }
}