import 'package:flutter/material.dart';
import 'add_notes_item_content.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffffcc80),
      ),
      child: const AddNotesItemContent(),
    );
  }
}
