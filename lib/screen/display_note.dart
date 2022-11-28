import 'package:flutter/material.dart';
import 'package:tranning/model/note_model.dart';
import 'package:tranning/database/database.dart';

class ShowNote extends StatelessWidget {
  const ShowNote({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Note"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.delete))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          // Text(
          //  "${note}"
          //   style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          // ),
          // const SizedBox(
          //   height: 16,
          // ),
          // Text(
          //   "${note.body}",
          //   style: const TextStyle(fontSize: 18),
          // ),
        ]),
      ),
    );
  }
}
