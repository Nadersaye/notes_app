import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';

class CustomNoteTextFormfield extends StatelessWidget {
  const CustomNoteTextFormfield(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSavedData,
      this.formKey,
      this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSavedData;
  final void Function(String)? onChanged;
  final GlobalKey<FormState>? formKey;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSavedData,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filled is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          hintText: hint,
          border: customTextformfieldBorder(borderColor: null),
          focusedBorder:
              customTextformfieldBorder(borderColor: AppColors.primaryColor),
          enabledBorder: customTextformfieldBorder(borderColor: null)),
    );
  }

  OutlineInputBorder customTextformfieldBorder(
          {@required Color? borderColor}) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: borderColor ?? Colors.white));
}
