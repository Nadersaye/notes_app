import 'package:flutter/material.dart';
import '../custom_appbar.dart';
import 'custom_notes_listview.dart';

class AddNotesViewBody extends StatelessWidget {
  const AddNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(),
          Expanded(child: CustomNotesListview())
        ],
      ),
    );
  }
}
