import 'package:flutter/material.dart';

import '../quiz_page/quiz_page.dart';


class TrashDetail extends StatelessWidget {
  final int id;

  TrashDetail({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true, // Để giữ thanh AppBar cố định khi trượt lên
                expandedHeight: 200, // Chiều cao mở rộng của thanh AppBar
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Giấy',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  background: Image.asset(
                    id == 0 ? 'assets/images/paper.jpg' : 'assets/images/eco_bin.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text(
                    'Tại sao giấy lại là sản phẩm tái chế được',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Text('Giấy tạo nên từ gỗ - một vật liệu tự nhiên và có thể tái tạo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),)
                ),
                Text('Các loại giấy có thể tái chế', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Text('Dưới đây là một số loại giấy có thể tái chế thành các sản phẩm mới có tính ứng dụng cao:'),
                      ListTile(
                        title: Text(' - Báo cũ'),
                      ),
                      ListTile(
                        title: Text(' - Các loại giấy tờ hỗn hợp'),
                      ),
                      ListTile(
                        title: Text(' - Tạp chí'),
                      ),
                      ListTile(
                        title: Text(' - Danh bạ điện thoại mới hoặc đã qua sử dụng'),
                      ),
                      ListTile(
                        title: Text(' - Sách trắng'),
                      ),
                      ListTile(
                        title: Text(' - Sổ cái'),
                      ),
                      ListTile(
                        title: Text(' - Bìa hoặc thùng carton cứng cũ'),
                      ),
                    ],
                  ),
                ),
                Text('Các giải pháp tái chế giấy', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(' 1: Thu gom, tập kết'),
                      ),
                      ListTile(
                        title: Text(' 2: Sắp xếp, phân loại, vận chuyển'),
                      ),
                      ListTile(
                        title: Text(' 3: Tạo bột giấy và khử mực'),
                      ),
                      ListTile(
                        title: Text(' 4: Tẩy trắng'),
                      ),
                      ListTile(
                        title: Text(' 5: Cuộn giấy'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizPage(),
            ),
          );
        },
        label: Text('Kiểm tra'),
        icon: Icon(Icons.quiz),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Đã thêm vào danh sách nhắc nhở'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('6 tiếng'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Đã thêm vào danh sách nhắc nhở'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('2 ngày'),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Đã thêm vào danh sách nhắc nhở'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('1 tuần'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Đã thêm vào danh sách nhắc nhở'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('1 tháng'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}