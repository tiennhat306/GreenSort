import 'dart:io';

import 'package:flutter/material.dart';

import '../trash_detail/trash_detail.dart';

class ImageScreen extends StatelessWidget {
  final File imageFile;

  ImageScreen({required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kết quả phân loại rác'),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.file(imageFile),
                Positioned(
                  child: Container(
                    child: Text(
                      'Paper: 0.65',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 5,
                      ),
                    ),
                  ),
                  height: 200,
                  width: 200,
                  left: 50,
                  top: 75,
                ),
                Positioned(
                  child: Container(
                    child: Text(
                      'Plastic: 0.76',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 5,
                      ),
                    ),
                  ),
                  height: 100,
                  width: 200,
                  left: 150,
                  top: 300,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 175,
            child: ListView.builder(
              itemCount: 2,
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
                          index == 0 ? 'Giấy' : 'Nhựa',
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
                          'Tái chế',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
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
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}