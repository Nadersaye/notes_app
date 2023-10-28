import 'package:flutter/material.dart';

import 'custom_note_textformfield.dart';

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
            hint: 'Title',
          )
        ],
      ),
    );
  }
}
