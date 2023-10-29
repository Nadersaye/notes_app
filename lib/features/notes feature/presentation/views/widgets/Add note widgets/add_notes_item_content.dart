import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/models/note_model.dart';

class AddNotesItemContent extends StatelessWidget {
  const AddNotesItemContent({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomNotesListTile(
          note: note,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'May21,2022',
            style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
          ),
        )
      ],
    );
  }
}

class CustomNotesListTile extends StatefulWidget {
  const CustomNotesListTile({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<CustomNotesListTile> createState() => _CustomNotesListTileState();
}

class _CustomNotesListTileState extends State<CustomNotesListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.note.title,
        style: const TextStyle(color: Colors.black, fontSize: 26),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          widget.note.subtitle,
          style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          widget.note.delete();
          setState(() {});
        },
        child: const Icon(
          FontAwesomeIcons.trash,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}
