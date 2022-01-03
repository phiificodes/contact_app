import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';

class ContactEdit extends StatefulWidget {
  Map contactitem;
  ContactEdit({Key? key, required this.contactitem}) : super(key: key);

  @override
  _ContactEditState createState() => _ContactEditState();
}

class _ContactEditState extends State<ContactEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Done',
              style: TextStyle(color: Colors.blue, fontSize: 17),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(children: [
          Container(
            width: double.infinity,
            height: 190,
            decoration: const BoxDecoration(color: Colors.white38),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("${widget.contactitem["image"]}"),
                    radius: 80,
                  ),
                ),
                const Text('Add Photo',
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey[100]),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                    ),
                    initialValue: widget.contactitem['first_name'],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                    ),
                    initialValue: widget.contactitem['last_name'],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Group',
                    ),
                    initialValue: widget.contactitem['group'],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Mobile',
                    ),
                    initialValue: widget.contactitem['mobile'],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    initialValue: widget.contactitem['email'],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Location',
                    ),
                    initialValue: widget.contactitem['location'],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Country',
                    ),
                    initialValue: "Ghana",
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 43,
                  color: Colors.white,
                  child: const Card(
                    margin: EdgeInsets.only(top: 20, left: 12),
                    child: Text(
                      "LINKED CONTACTS",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    CupertinoIcons.plus_circle_fill,
                    color: Colors.lightGreen,
                  ),
                  title: Text("link contacts..."),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                ),
                const ListTile(
                  title: Text(
                    "Delete Contact",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
