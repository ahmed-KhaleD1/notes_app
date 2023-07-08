import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            ListTile(
              title: const Text(
                'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'ahmed khaled helmy asdfdfsgsdf g fg asd f sd fds',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 12),
                ),
              ),
              trailing: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 22,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                'May 21,2021',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
