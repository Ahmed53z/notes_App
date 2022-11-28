import 'package:flutter/material.dart';
import 'package:tranning/screen/addnotes.dart';
import 'package:tranning/screen/display_note.dart';
import 'package:tranning/screen/home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(),
        "/AddNote": (context) => const AddNote(),
        "/ShowNote": ((context) => ShowNote()),
      },
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
