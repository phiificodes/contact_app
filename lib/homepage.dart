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
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return FormBuilder();
                  });
            },
            child: const Icon(Icons.add)),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(CupertinoIcons.home),
                Icon(CupertinoIcons.chart_bar),
                Icon(CupertinoIcons.settings),
                Icon(Icons.more_vert_outlined)
              ]),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
