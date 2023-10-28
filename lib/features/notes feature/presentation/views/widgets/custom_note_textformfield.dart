import 'package:flutter/material.dart';

class CustomNoteTextFormfield extends StatelessWidget {
  const CustomNoteTextFormfield(
      {super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff62fcd7),
      decoration: InputDecoration(
          hintText: hint,
          focusedBorder:
              customTextformfieldBorder(borderColor: const Color(0xff62fcd7)),
          enabledBorder: customTextformfieldBorder(borderColor: null)),
    );
  }

  OutlineInputBorder customTextformfieldBorder(
          {@required Color? borderColor}) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: borderColor ?? Colors.white));
}
