import 'package:flutter/material.dart';

import '../../models/navigation_bar.dart';
import '../detector/detector_page.dart';
import '../trash_detail/trash_detail.dart';


class HomePage extends StatefulWidget {
  final int score;
  HomePage({this.score = 136});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true, // Để giữ thanh AppBar cố định khi trượt lên
                    expandedHeight: 200, // Chiều cao mở rộng của thanh AppBar
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('Quá trình',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      background: Image.asset(
                        'assets/images/qua_trinh.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    // RichText
                    RichText(
                        text: TextSpan(
                          text: 'Điểm quá trình tái chế: ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: this.widget.score == 136? '136' : "140",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        )
                    ),
                    Image.asset(
                      'assets/images/tree.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Tìm kiếm gần đây',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey[200],
                        shape: BoxShape.rectangle,
                      )
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 175,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              color: Colors.grey[200],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    index == 0 ? 'Giấy' : index == 1 ? 'Nhựa' : 'Túi nilon',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    index == 1 ? 'Tái chế' : index == 2? 'Tái chế' : 'Vô cơ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: index <= 2 ? Colors.green : Colors.yellow,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TrashDetail(id : index),
                                        ),
                                      );
                                    },
                                    child: Text('Xem thêm'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      onPrimary: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.grey[200],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Bảng xếp hạng',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey[200],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 175,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black26,
                                  width: 1,
                                ),
                              ),
                              color: Colors.grey[200],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    (index == 1) ? 'Tiến' : index==2 ?'Nhật' : index==3 ? 'Vỹ' : index==4?'Thảo' : 'Việt',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    (index == 1) ? '986' : index == 2 ? '500' : index==3?'400' : index==4?'300' : '200',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.grey[200],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //     alignment: Alignment.topRight,
            //     child: Container(
            //       padding: EdgeInsets.all(8),
            //       constraints: BoxConstraints(
            //         maxWidth: 300,
            //       ),
            //
            //       child:Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           CircleAvatar(
            //             radius: 20,
            //             backgroundImage: AssetImage('assets/images/eco_bin.png'),
            //           ),
            //           SizedBox(width: 10,),
            //           Text('Tiến Nhật', style: TextStyle(
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold,
            //           ),),
            //         ],
            //       ),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(30),
            //           bottomLeft: Radius.circular(30),
            //         ),
            //         color: Colors.cyanAccent,
            //         shape: BoxShape.rectangle,
            //       ),
            //     )
            // ),
          ],
        ),
      ),

      floatingActionButton: Container(
        height: 60,
        width: 60,
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