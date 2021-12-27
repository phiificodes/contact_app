import 'package:contact_app/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contact_app/contails_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}
