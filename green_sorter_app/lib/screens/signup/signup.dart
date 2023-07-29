import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:green_sorter_app/helpers/auth_bloc.dart';
import '../../main.dart';
import '../login/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State {
  AuthBloc authBloc = new AuthBloc();
  // controller
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 6),
                child: Image.asset('assets/images/eco_bin.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  'Welcome SignUp Screen!',
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                'SignUp with GreenSorter',
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle:
                    TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _phoneController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Phone number",
                    labelStyle:
                    TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _emailController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                    TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle:
                    TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: _onSignUpClicked(),
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff3277D8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: RichText(
                    text: TextSpan(
                      text: "Already account? ",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Login now",
                          style:
                          TextStyle(color: Color(0xff3277D8), fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogInPage()));
                            },
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _onSignUpClicked() {
    authBloc.signUp(_emailController.text, _passwordController.text, _nameController.text, _phoneController.text, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()));
    });
  }
}
