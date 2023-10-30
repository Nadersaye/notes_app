import 'package:flutter/material.dart';

import 'custom_color_listview_item.dart';

class CustomColorListview extends StatelessWidget {
  const CustomColorListview({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const CustomColorListviewItem();
        },
      ),
    );
  }
}
