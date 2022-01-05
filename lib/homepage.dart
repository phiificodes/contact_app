import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contact_app/contact_list.dart';
import 'package:contact_app/formbuilder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text("My Contacts",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("images/img3.jpeg"),
              )),
        ],
      ),
      body: const ContactList(),

      bottomNavigationBar: BottomNavigationBar(elevation: 10, items: const [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.star_fill,
            color: Colors.blue,
          ),
          title: Text(
            'Favorites',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.clock_fill,
            color: Colors.grey,
          ),
          title: Text('Recents', style: TextStyle(color: Colors.grey)),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.grey,
          ),
          title: Text('contacts', style: TextStyle(color: Colors.grey)),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert_outlined,
            color: Colors.grey,
          ),
          title: Text('More', style: TextStyle(color: Colors.grey)),
        ),
      ]),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
