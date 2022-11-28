import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:tranning/database/database.dart';
import 'package:tranning/model/note_model.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  String? title;
  String? body;
  DateTime? date;

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  addNote(NoteModel note) {
    print("note added succesfully");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Note")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Note Title",
            ),
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: TextField(
            controller: bodyController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Your Note"),
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // title = titleController.text;
          // body = bodyController.text;
          // date = DateTime.now();

          // NoteModel note =
          //     NoteModel(title: title, body: body, Creation_date: date);
          // addNote(note);

          Navigator.of(context).pushNamed( "/ShowNote");
          
         
        },
        label: const Text("Save Note"),
        icon: const Icon(Icons.save),
      ),
    );
  }
}

