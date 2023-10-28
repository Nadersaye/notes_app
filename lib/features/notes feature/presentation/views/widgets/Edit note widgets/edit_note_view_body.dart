import 'package:flutter/material.dart';
import 'package:notes_app/features/notes%20feature/presentation/views/widgets/custom_appbar.dart';
import 'package:notes_app/features/notes%20feature/presentation/views/widgets/custom_note_textformfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            tiltle: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomNoteTextFormfield(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomNoteTextFormfield(
            hint: 'title',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
