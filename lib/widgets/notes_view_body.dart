import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        CustomAppbar(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: NotesList())
      ]),
    );
  }
}
