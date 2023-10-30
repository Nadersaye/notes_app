import 'package:flutter/material.dart';

class CustomColorListviewItem extends StatelessWidget {
  const CustomColorListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.purple,
    );
  }
}
