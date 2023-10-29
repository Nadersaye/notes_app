import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/notes%20cubit/notes_cubit.dart';
import '../custom_appbar.dart';
import 'custom_notes_listview.dart';

class AddNotesViewBody extends StatefulWidget {
  const AddNotesViewBody({super.key});

  @override
  State<AddNotesViewBody> createState() => _AddNotesViewBodyState();
}

class _AddNotesViewBodyState extends State<AddNotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            tiltle: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: CustomNotesListview())
        ],
      ),
    );
  }
}
