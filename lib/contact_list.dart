// ignore: file_names
import 'package:contact_app/contails_details.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
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
                      builder: (context) => ContactDetails()));
                },
                child: const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("images/adina.jpeg"),
                      radius: 26),
                  title: Text(
                    "Adina Thembi",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("+233 26 567 990"),
                  trailing: Icon(Icons.more_horiz_rounded),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: 3),
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
                        builder: (context) => ContactDetails()));
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("images/img1.jpeg"),
                        radius: 26),
                    title: Text(
                      "Adina Thembi",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("+233 26 567 990"),
                    trailing: Icon(Icons.more_horiz_rounded),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: 2),
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
                        builder: (context) => ContactDetails()));
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("images/img2.jpeg"),
                        radius: 26),
                    title: Text(
                      "Adina Thembi",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("+233 26 567 990"),
                    trailing: Icon(Icons.more_horiz_rounded),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  indent: 18,
                  endIndent: 18,
                  color: Colors.grey,
                ),
            itemCount: 4),
      ],
    );
  }
}
