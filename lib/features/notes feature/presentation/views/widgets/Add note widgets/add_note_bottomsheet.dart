import 'package:flutter/material.dart';
import 'custom_add_note_button.dart';
import '../custom_note_textformfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomNoteTextFormfield(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomNoteTextFormfield(
            hint: 'content',
            maxLines: 10,
          ),
          SizedBox(
            height: 32,
          ),
          CustomAddNoteButton()
        ],
      ),
    );
  }
}
