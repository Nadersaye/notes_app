import 'package:flutter/material.dart';
import 'package:notes_app/features/notes%20feature/presentation/views/widgets/Add%20note%20widgets/custom_note_item.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
              padding: EdgeInsets.only(bottom: 4), child: CustomNoteItem());
        },
      ),
    );
  }
}