import 'dart:async';
import 'package:green_sorter_app/fire_base/fir_auth.dart';

class AuthBloc {
  var _auth = AuthFir();

  final _nameController = new StreamController();
  final _emailController = new StreamController();
  final _passwordController = new StreamController();
  final _phoneController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passwordStream => _passwordController.stream;
  Stream get phoneStream => _phoneController.stream;

  void dispose() {
    _nameController.close();
    _emailController.close();
    _passwordController.close();
    _phoneController.close();
  }

  void signUp(String email, String password, String name, String phone, Function onSuccess){
    _auth.signUpWithEmailAndPassword(email, password, name, phone, onSuccess);
  }
}