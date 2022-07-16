import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:lems/confirm.dart';

import 'add_dis.dart';

class camera_gallery extends StatefulWidget {
  const camera_gallery();

  @override
  State<camera_gallery> createState() => _camera_galleryState();
}

class _camera_galleryState extends State<camera_gallery> {
  File? _image;
  Future getimage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imagetemp = File(image.path);
      setState(() {
        this._image = imagetemp;
      });
    } on PlatformException catch (e) {
      print('failed to  pick image:$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            'Insert Image',
          ),
          backgroundColor: Colors.amber,
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: _image != null
                            ? Image.file(
                                _image!,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/insert_image.jpg',
                                height: 150,
                                width: 150,
                              )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber,
                              ),
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        getimage(ImageSource.camera);
                                      },
                                      icon: Icon(Icons.camera)),
                                  Text('Camera')
                                ],
                              ),
                              width: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber,
                              ),
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        getimage(ImageSource.gallery);
                                      },
                                      icon: Icon(Icons.photo_album)),
                                  Text('Choose from galley')
                                ],
                              ),
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: _image != null
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.amber,
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 50, vertical: 20),
                                  // textStyle: TextStyle(
                                  //     fontSize: 30, fontWeight: FontWeight.bold)),
                                ),
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return confirm(_image);
                                    }));
                                  });
                                },
                                child: Text('Done'))
                            : Text('')),
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
