import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class camera_gallery extends StatefulWidget {
  const camera_gallery({Key? key}) : super(key: key);

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
        body: Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                getimage(ImageSource.camera);
              },
              icon: Icon(Icons.camera)),
          Container(
              child: _image != null
                  ? Image.file(
                      _image!,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    )
                  : Image.asset('assets/insert_image.jpg'))
        ],
      ),
    )));
  }
}
