import 'package:flutter/material.dart';

import '../../models/navigation_bar.dart';
import '../detector/detector_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              // gradient blue
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/eco_bin.png'),
                ),
                SizedBox(width: 20,),
                Text('Tiến Nhật', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              // gradient blue
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 20,),
                Text('Thông tin cá nhân', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              // gradient blue
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 20,),
                Text('Cài đặt', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              // gradient blue
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.help),
                SizedBox(width: 20,),
                Text('Trợ giúp', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              // gradient blue
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 20,),
                Text('Đăng xuất', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(5),
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetectorPage(),
              ),
            );
          },
          tooltip: 'Take a picture',
          child: Icon(Icons.camera),
          mini: false,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigationBarWidget,
    );
  }
}