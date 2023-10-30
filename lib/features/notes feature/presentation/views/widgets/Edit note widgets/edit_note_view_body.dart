import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/notes%20cubit/notes_cubit.dart';
import '../../../../data/models/note_model.dart';
import '../custom_appbar.dart';
import '../custom_note_textformfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String title = '', substitle = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbar(
            tiltle: 'Edit Notes',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title;
              widget.note.subtitle = substitle;
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomNoteTextFormfield(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomNoteTextFormfield(
            hint: widget.note.subtitle,
            maxLines: 5,
            onChanged: (value) {
              substitle = value;
            },
          ),
        ],
      ),
    );
  }
}
