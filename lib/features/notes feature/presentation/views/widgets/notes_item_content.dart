import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItemContent extends StatelessWidget {
  const NotesItemContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const CustomNotesListTile(),
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

class CustomNotesListTile extends StatelessWidget {
  const CustomNotesListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Flutter Tips',
        style: TextStyle(color: Colors.black, fontSize: 26),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          'Build your career with nader sayed',
          style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
        ),
      ),
      trailing: const Icon(
        FontAwesomeIcons.trash,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
