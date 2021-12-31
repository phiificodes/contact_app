// ignore: file_names

import 'package:contact_app/contails_details.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/contact_item_list.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List contactItemList = contact_item_list;

  List listOfAs = contact_item_list
      .where((element) => element['first_name'].toString().startsWith('A'))
      .toList();

  List listOfBs = contact_item_list
      .where((element) => element['first_name'].toString().startsWith('B'))
      .toList();

  List listOfCs = contact_item_list
      .where((element) => element['first_name'].toString().startsWith('C'))
      .toList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search name or number",
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 18, right: 18),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Recents",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ContactDetails(contactitem: contactItemList[index])));
                },
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("${contactItemList[index]["image"]}"),
                      radius: 26),
                  title: Text(
                    '${contactItemList[index]["first_name"]} ${contactItemList[index]["last_name"]}',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("${contactItemList[index]["mobile"]}"),
                  trailing: const Icon(Icons.more_horiz_rounded),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: contactItemList.length - 2),
        Container(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Contacts",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("A",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800))
            ],
          ),
        ),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ContactDetails(contactitem: listOfAs[index])));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("${listOfAs[index]["image"]}"),
                        radius: 26),
                    title: Text(
                      "${listOfAs[index]["first_name"]} ${listOfAs[index]["last_name"]}",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("${listOfAs[index]["mobile"]}"),
                    trailing: const Icon(Icons.more_horiz_rounded),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: listOfAs.length),
        Container(
          margin: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("B",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
            ],
          ),
        ),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ContactDetails(contactitem: listOfBs[index])));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("${listOfBs[index]["image"]}"),
                        radius: 26),
                    title: Text(
                      "${listOfBs[index]["first_name"]} ${listOfBs[index]["last_name"]}",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("${listOfBs[index]["mobile"]}"),
                    trailing: const Icon(Icons.more_horiz_rounded),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: listOfBs.length),
        Container(
          margin: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("C",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
            ],
          ),
        ),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ContactDetails(contactitem: listOfCs[index])));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("${listOfCs[index]["image"]}"),
                        radius: 26),
                    title: Text(
                      "${listOfCs[index]["first_name"]} ${listOfCs[index]["last_name"]}",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("${listOfCs[index]["mobile"]}"),
                    trailing: const Icon(Icons.more_horiz_rounded),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: listOfCs.length)
      ],
    );
  }
}
