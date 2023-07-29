import 'package:flutter/material.dart';

import '../../models/navigation_bar.dart';
import '../detector/detector_page.dart';
import 'collectibles.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
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
                  title: Text('Thành tựu',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  background: Image.asset(
                    'assets/images/thanh_tuu.jpg',
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
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[200],
                  ),
                  child: RichText(
                      text: TextSpan(
                        text: 'Rác tái chế: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: '5/',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              children: [
                                TextSpan(
                                  text: '87',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(0),
                  width: double.infinity,
                  height: 195,
                  child: ListView.builder(
                    itemCount: 2, // Số lượng dòng trong bảng
                    itemBuilder: (context, index) {
                      return LayoutBuilder(
                          builder: (context, constraints) {
                            final screenWidth = constraints.maxWidth;
                            final containerWidth = screenWidth * 0.3; // 30% của chiều rộng màn hình
                            if(index % 2 == 0){
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: containerWidth,

                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/hop_giay.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/hop_sua.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/lon.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }
                            else {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12 + containerWidth/2,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/chai_nhua.png',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/lon_nuoc.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              );
                            }
                          }
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    ),
                    color: Colors.grey[200],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[200],
                  ),
                  child: RichText(
                      text: TextSpan(
                        text: 'Rác vô cơ: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: '5/',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              children: [
                                TextSpan(
                                  text: '56',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 175,
                  child: ListView.builder(
                    itemCount: 2, // Số lượng dòng trong bảng
                    itemBuilder: (context, index) {
                      return LayoutBuilder(
                          builder: (context, constraints) {
                            final screenWidth = constraints.maxWidth;
                            final containerWidth = screenWidth * 0.3; // 30% của chiều rộng màn hình
                            if(index % 2 == 0){
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: containerWidth,

                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/clothes.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/nilon_bag.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              );
                            }
                            else {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12 + containerWidth/2,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/plastic_cork.png',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/lop_xe.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              );
                            }
                          }
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[200],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: RichText(
                      text: TextSpan(
                        text: 'Rác hữu cơ: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: '0/',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              children: [
                                TextSpan(
                                  text: '71',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 175,
                  child: ListView.builder(
                    itemCount: 2, // Số lượng dòng trong bảng
                    itemBuilder: (context, index) {
                      return LayoutBuilder(
                          builder: (context, constraints) {
                            final screenWidth = constraints.maxWidth;
                            final containerWidth = screenWidth * 0.3; // 30% của chiều rộng màn hình
                            if(index % 2 == 0){
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: containerWidth,

                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                      Container(
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              );
                            }
                            else {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12 + containerWidth/2,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: containerWidth/12,
                                            right: containerWidth/12),
                                        width: containerWidth,
                                        child: HexagonImageWidget(
                                          imagePath: 'assets/images/bottle.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              );
                            }
                          }
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.cyanAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
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