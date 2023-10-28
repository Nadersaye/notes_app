import 'package:flutter/material.dart';
import 'package:notes_app/features/notes%20feature/presentation/views/widgets/custom_note_item.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
            padding: EdgeInsets.only(bottom: 8), child: CustomNoteItem());
      },
    );
  }
}
