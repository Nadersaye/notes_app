import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/notes%20feature/presentation/manager/notes%20cubit/notes_cubit.dart';
import 'custom_color_listview_item.dart';

class CustomColorListview extends StatefulWidget {
  const CustomColorListview({super.key});

  @override
  State<CustomColorListview> createState() => _CustomColorListviewState();
}

class _CustomColorListviewState extends State<CustomColorListview> {
  List<Color> myColors = const [
    Color(0xffB8336A),
    Color(0xffC490D1),
    Color(0xffACACDE),
    Color(0xffABDAFC),
    Color(0xff7AE7C7),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: myColors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<NotesCubit>(context).color =
                  myColors[currentIndex];
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: CustomColorListviewItem(
                color: myColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
