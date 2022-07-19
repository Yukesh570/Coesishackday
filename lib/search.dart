import 'package:flutter/material.dart';

import 'add_dis.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(255, 246, 205, 83)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Form',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                discription(
                  detail: 'Name',
                ),
                discription(
                  detail: 'Price',
                ),
                discription(
                  detail: 'Qty',
                ),
                discription(
                  detail: 'Description',
                ),
              ],
            )),
            height: 400,
            width: 390,
          ),
        ),
      ),
    ));
  }
}
