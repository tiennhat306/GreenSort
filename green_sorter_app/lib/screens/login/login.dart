import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../homepage/homepage.dart';
import '../introduction/introduction_page.dart';
import '../signup/signup.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Image.asset('assets/images/eco_bin.png'),
              ),
              Text(
                'Đăng nhập để sử dụng GreenSorter',
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _emailController,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Quên mật khẩu?',
                  style: TextStyle(fontSize: 15, color: Color(0xff606470)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () { _onLogInClicked();},
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff3277D8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                    ),
                  )
              ),
              Text("Hoặc"),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google_logo.png'),
                        SizedBox(width: 10,),
                        Text(
                          "Đăng nhập bằng Google",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 40),
                  child: RichText(
                    text: TextSpan(
                      text: "Người dùng mới? ",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Tạo tài khoản",
                          style: TextStyle(
                              color: Color(0xff3277D8), fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }

  void _onLogInClicked() {
    // String email = _emailController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }
}