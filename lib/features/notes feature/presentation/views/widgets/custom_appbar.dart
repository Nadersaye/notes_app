import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.tiltle, required this.icon});
  final String tiltle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tiltle,
          style: const TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
