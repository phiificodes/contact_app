import 'package:contact_app/contact_item_list.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/contails_details.dart';

class ContactSection extends StatefulWidget {
  final String alphabet;
  final List data;
  const ContactSection({Key? key, required this.alphabet, required this.data})
      : super(key: key);

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    List contactItemList = widget.data;
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.alphabet == 'A' ? "Contacts" : "",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Text(widget.alphabet,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
      ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemCount: contactItemList.length,
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
                  "${contactItemList[index]["first_name"]} ${contactItemList[index]["last_name"]}",
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("${contactItemList[index]["mobile"]}"),
                trailing: const Icon(Icons.more_horiz_rounded),
              ));
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 0.8,
          indent: 18,
          endIndent: 18,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
