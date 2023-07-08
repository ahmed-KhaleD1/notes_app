import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppbar(
            icon: Icons.check,
            title: 'Edit Note',
          )
        ],
      ),
    );
  }
}
