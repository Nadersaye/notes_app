import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/features/notes%20feature/data/models/note_model.dart';

import '../../../../../core/constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel notes) {
    try {
      emit(AddNotesSuccess());
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      notesBox.add(notes);
    } catch (e) {
      emit(AddNotesFailure(errorMessage: e.toString()));
    }
  }
}
