import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/notes%20cubit/notes_cubit.dart';
import '../../../../data/models/note_model.dart';
import 'custom_note_item.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (BuildContext context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              List<NoteModel> notes =
                  BlocProvider.of<NotesCubit>(context).notes ?? [];
              return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: CustomNoteItem(
                    note: notes[index],
                  ));
            },
          ),
        );
      },
    );
  }
}
