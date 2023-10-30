import 'package:flutter/material.dart';
import 'package:notes_app/core/constants.dart';
import 'package:notes_app/features/notes%20feature/data/models/note_model.dart';
import '../Add note widgets/custom_color_listview_item.dart';

class CustomEditColorListview extends StatefulWidget {
  const CustomEditColorListview({super.key, required this.note});
  final NoteModel note;
  @override
  State<CustomEditColorListview> createState() => _CustomColorListviewState();
}

class _CustomColorListviewState extends State<CustomEditColorListview> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[currentIndex].value;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: CustomColorListviewItem(
                  color: kColors[index], isActive: currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
