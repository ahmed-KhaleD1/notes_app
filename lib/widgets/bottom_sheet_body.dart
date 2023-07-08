import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
