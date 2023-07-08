import 'package:flutter/material.dart';
import 'package:notes_app/views/bottom_sheet_view.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'Note View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const BottomSheetView();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody());
  }
}
