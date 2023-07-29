import 'package:flutter/material.dart';

import '../../models/navigation_bar.dart';
import '../homepage/homepage.dart';


class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0; // Biến để lưu trữ chỉ số của câu hỏi hiện tại
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiểm tra'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: PageView.builder(
          itemCount: 3,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Câu hỏi ${index + 1}/3",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  height: 8,
                  thickness: 2,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  index==0?'Giấy là loại rác nào?':index==1?'Chất nào sau đây là chất thải khó phân hủy?':'Thứ nào trong số này không nên tái chế?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                for (int i = 0; i < 4; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
            (index==0?((i == 0)?'Rác hữu cơ':(i == 1)?'Rác tái chế':(i == 2)?'Rác vô cơ':'Rác sinh hoạt'):index==1?((i == 0)?'Giấy':(i == 1)?'Vật chất nhôm':(i == 2)?'Giấy nhôm':'Bông'):((i == 0)?'Khăn giấy':(i == 1)?'Giấy vụn':(i == 2)?'Hộp đựng sữa chua':'Khay nhôm lá/khay giấy nhôm')),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      color: Colors.grey[300], // (i == index+1)? Colors.greenAccent : (i == 0)? Colors.redAccent :
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = (currentIndex + 1);
                    });
                    pageController.jumpToPage(currentIndex);
                    if(currentIndex > 2){
                      AppData.selectedIndex = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(score: 140,),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Tiếp theo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            );
          },
        ),
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