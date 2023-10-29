import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/cubit/add_notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
          } else if (state is AddNotesSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (BuildContext context, AddNotesState state) {
          return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const AddNoteForm(),
              )));
        },
      ),
    );
  }
}
