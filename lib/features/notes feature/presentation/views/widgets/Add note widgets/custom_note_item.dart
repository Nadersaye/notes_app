import 'package:flutter/material.dart';
import '../../../../data/models/note_model.dart';
import '../../edit_note_view.dart';
import 'add_notes_item_content.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const EditNotesView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: AddNotesItemContent(
          note: note,
        ),
      ),
    );
  }
}
