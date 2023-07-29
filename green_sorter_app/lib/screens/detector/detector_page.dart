import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/navigation_bar.dart';
import '../image_screen/image_screen.dart';

class DetectorPage extends StatefulWidget {
  @override
  _DetectorPageState createState() => _DetectorPageState();
}

class _DetectorPageState extends State<DetectorPage> {
  File? _image;

  @override
  void initState() {
    super.initState();
    AppData.selectedIndex = -1;
    _image = null;
  }

  Future<void> _takePicture() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if(image != null){
      File file = File(image.path);

      setState(() {
        _image = file;
      });
    }

    await Future.delayed(Duration(seconds: 2));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageScreen(imageFile: _image!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phân loại rác'),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: _image == null
              ? Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                        onPressed: _takePicture,
                        child: Column(
                          children: [
                            Icon(Icons.camera,
                                size: 100),
                            Text('Camera'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        _takePicture();
                      },
                      child: Column(
                        children: [
                          Icon(Icons.image,
                            size: 100,),
                          Text('Gallery'),
                        ],
                      ),
                      // change color
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
          )
              : Stack(
            children: <Widget>[

              Center(
                  child: Image.file(_image!)
              ),
              Center(
                child: CircularProgressIndicator(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(5),
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: _takePicture,
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