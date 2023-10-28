import 'package:flutter/material.dart';
import 'notes_item_content.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
      child: Container(
        color: const Color(0xffffcc80),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: const NotesItemContent(),
      ),
    );
  }
}
