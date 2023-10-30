import 'package:flutter/material.dart';
import 'package:notes_app/features/notes%20feature/data/models/note_model.dart';
import 'widgets/Edit note widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
