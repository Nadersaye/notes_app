import 'package:flutter/material.dart';
import 'package:notes_app/features/notes%20feature/presentation/views/widgets/Edit%20note%20widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
