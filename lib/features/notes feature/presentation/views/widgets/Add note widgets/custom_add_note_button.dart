import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      color: AppColors.primaryColor,
      minWidth: MediaQuery.sizeOf(context).width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: () {},
      child: const Text(
        'Add',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
