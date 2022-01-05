// ignore: file_names

import 'package:contact_app/contact_section.dart';
import 'package:contact_app/contails_details.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/contact_item_list.dart';
import 'dart:math';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List contactItemList = contact_item_list;
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
          itemCount: 3,
          itemBuilder: (context, index) {
            var random = Random();
            index = random.nextInt(contactItemList.length);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactDetails(
                        contactitemDetails: contactItemList[index])));
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
        ),
        Container(
          height: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              primary: false,
              itemCount: alphabets.length,
              itemBuilder: (context, index) {
                List newList = contactItemList.where((element) {
                  return element['first_name']
                      .toString()
                      .startsWith(alphabets[index]);
                }).toList();
                return newList.isNotEmpty
                    ? ContactSection(alphabet: alphabets[index], data: newList)
                    : Container();
              }),
        )
      ],
    );
  }
}
