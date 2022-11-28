import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tranning/database/database.dart';
import 'package:tranning/model/note_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DatabaseP databaseP = DatabaseP();

  Future<List<Map>> readData() async {
    List<Map> resonse = await DatabaseP().readData("");
    return resonse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Notes"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/AddNote");
          },
          child: const Icon(Icons.note_add),
        ),
        body: Center(
            child: FutureBuilder(
                future: readData(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> noteData) {
                  if (noteData.hasData) {}
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                })));
  }
}
