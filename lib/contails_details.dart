// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:contact_app/contact_edit.dart';

class ContactDetails extends StatefulWidget {
  Map contactitemDetails;
  ContactDetails({Key? key, required this.contactitemDetails})
      : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text("Contact",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ContactEdit(contactitem: widget.contactitemDetails)));
            },
            child: Text("Edit", style: TextStyle(color: Colors.blue)),
          )
        ],
      ),
      body: Container(
        child: ListView(children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(color: Colors.white38),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("${widget.contactitemDetails["image"]}"),
                    radius: 50,
                  ),
                ),
                Text(
                    "${widget.contactitemDetails["first_name"]} ${widget.contactitemDetails["last_name"]}",
                    style: TextStyle(
                      fontSize: 30,
                    )),
                Text("${widget.contactitemDetails["location"]}, Ghana"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 5.0, top: 5.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble_fill,
                              color: Colors.blue[700],
                            ),
                            Text(
                              "message",
                              style: (TextStyle(color: Colors.blue[700])),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, bottom: 5.0, top: 5.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.phone_fill,
                              color: Colors.blue[700],
                            ),
                            Text(
                              "call",
                              style: (TextStyle(color: Colors.blue[700])),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 5.0, top: 5.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.videocam_fill,
                              color: Colors.blue[700],
                            ),
                            Text(
                              "video",
                              style: (TextStyle(color: Colors.blue[700])),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, bottom: 5.0, top: 5.0),
                        child: Column(
                          children: const [
                            Icon(
                              CupertinoIcons.mail_solid,
                              color: Colors.grey,
                            ),
                            Text(
                              "mail",
                              style: (TextStyle(color: Colors.grey)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey[100]),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ListTile(
                  title: Text("Mobile", style: TextStyle(fontSize: 18)),
                  subtitle: Text("${widget.contactitemDetails["mobile"]}"),
                  trailing: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.message,
                      color: Colors.black54,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text("${widget.contactitemDetails["email"]}"),
                  trailing: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.email,
                      color: Colors.black54,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Group", style: TextStyle(fontSize: 18)),
                  subtitle: Text("${widget.contactitemDetails["group"]}"),
                ),
                Container(
                    width: double.infinity,
                    height: 38,
                    color: Colors.white,
                    child: Card(
                      margin: EdgeInsets.only(left: 15, top: 8),
                      elevation: 0,
                      child: Text(
                        "Account Linked",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    )),
                ListTile(
                  title: Text("WhatsApp", style: TextStyle(fontSize: 17)),
                  trailing: Icon(
                    Ionicons.logo_whatsapp,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
                ListTile(
                  title: Text("Twitter", style: TextStyle(fontSize: 18)),
                  trailing: Icon(
                    Ionicons.logo_twitter,
                    color: Colors.blue[300],
                    size: 30,
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: 38,
                    color: Colors.white,
                    child: Card(
                      margin: EdgeInsets.only(left: 15, top: 8),
                      elevation: 0,
                      child: Text(
                        "More Options",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    )),
                ListTile(
                  title: Text("Share"),
                  trailing: Icon(
                    CupertinoIcons.share,
                    color: Colors.black54,
                    size: 27,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
