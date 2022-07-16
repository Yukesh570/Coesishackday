import 'dart:io';
import 'package:flutter/material.dart';
import 'add_dis.dart';

class confirm extends StatefulWidget {
  final File? img;
  confirm(
    this.img,
  );

  @override
  State<confirm> createState() => _confirmState();
}

class _confirmState extends State<confirm> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 244, 229, 95)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.file(
                      widget.img!,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Confirm',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    discription(
                      detail: name,
                    ),
                    discription(
                      detail: price,
                    ),
                    discription(
                      detail: qty,
                    ),
                    discription(
                      detail: discrip,
                    ),
                  ],
                )),
                // height: 400,
                width: 390,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
