import 'package:flutter/material.dart';
import 'custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.tiltle, required this.icon, this.onTap});
  final String tiltle;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tiltle,
          style: const TextStyle(fontSize: 28),
        ),
        CustomIcon(
          onTap: onTap,
          icon: icon,
        )
      ],
    );
  }
}
