import 'package:flutter/material.dart';
import 'widgets/Add note widgets/add_note_bottomsheet.dart';
import 'widgets/Add note widgets/add notes_view_body.dart';

class AddNotesView extends StatelessWidget {
  const AddNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AddNotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              context: context,
              builder: (context) => const AddNoteBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
