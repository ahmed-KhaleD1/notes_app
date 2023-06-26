import 'package:flutter/material.dart';

import 'package:notes_app/widgets/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const NotesItem();
      },
    );
  }
}
