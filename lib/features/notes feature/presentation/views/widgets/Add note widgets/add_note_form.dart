import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/data/models/note_model.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/add%20notes%20cubit/add_notes_cubit.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/notes%20cubit/notes_cubit.dart';
import '../custom_note_textformfield.dart';
import 'custom_add_note_button.dart';
import 'package:intl/intl.dart';

import 'custom_color_listview.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomNoteTextFormfield(
            hint: 'title',
            onSavedData: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomNoteTextFormfield(
            onSavedData: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const CustomColorListview(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomAddNoteButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  validateData(context);
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  void validateData(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var dataNow = DateTime.now();
      var formatedData = DateFormat('dd_MM_yyyy').format(dataNow);
      var noteModel = NoteModel(
          title: title!,
          subtitle: subtitle!,
          date: formatedData,
          color: BlocProvider.of<NotesCubit>(context).color?.value ??
              Colors.purple.value);
      BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
