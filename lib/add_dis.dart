import 'package:flutter/material.dart';
import 'package:lems/camera_gallery.dart';

class add_dis extends StatefulWidget {
  const add_dis({Key? key}) : super(key: key);

  @override
  State<add_dis> createState() => _add_disState();
}

class _add_disState extends State<add_dis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Component',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                        Text(
                          'Form',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(
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
                                  return camera_gallery();
                                }));
                              });
                            },
                            child: Text('Save and add image')),
                      )
                    ],
                  ),
                ),
                height: 50,
                width: 180,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class discription extends StatelessWidget {
  final String? detail;
  discription({this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('${detail}:'),
          Container(
            child: TextField(
              decoration: InputDecoration(
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                hintText: '$detail',
              ),
            ),
            width: 350,
          ),
        ],
      )),
    );
  }
}
