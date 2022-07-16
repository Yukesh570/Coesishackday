import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: (Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                      width: 370,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'New Request',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // leading: Text(' Std_Name'),
                          title: Text('student_name'),
                          subtitle: Text('Event Name'),
                          trailing: Text('Mon 27 June'),
                        ),
                      );
                    }))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
