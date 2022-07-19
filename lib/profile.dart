import 'package:flutter/material.dart';
import 'package:lems/home.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 100,
              ),
            ),
            Text(
              'Yukesh Maharjan',
              style: TextStyle(fontSize: 19),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  // leading: Text(' Std_Name'),
                  leading: Text('My orders'),
                  trailing: Icon(Icons.shop)),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  // leading: Text(' Std_Name'),
                  leading: Text('My list'),
                  trailing: Icon(Icons.card_travel_rounded)),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.amber, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  // leading: Text(' Std_Name'),
                  leading: Text('Account setting'),
                  trailing: Icon(Icons.settings)),
            ),
          ],
        ),
      ),
    ));
  }
}
