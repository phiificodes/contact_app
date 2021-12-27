// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        // color: Colors.blue[200],
        child: ListView(children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/adina.jpeg"),
                    radius: 70,
                  ),
                ),
                Text("Adina Thembi",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                Text("Accra, Ghana")
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
                  subtitle: Text("+233 25 284 222"),
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
                  subtitle: Text("yoofiduncan@gmail.com"),
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
                  subtitle: Text("GTL"),
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
                  title: Text("More Options"),
                  trailing: Icon(
                    Icons.more_horiz_rounded,
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
