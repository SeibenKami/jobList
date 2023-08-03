import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.onTap,
    this.label,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLines=1
  });
  final Widget? suffixIcon;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool readOnly;
  final void Function()? onTap;
  final bool obscureText;
  final Widget? label;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly,
      obscureText: obscureText,
      onTap: onTap,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: label,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.bgGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.bgGrey),
        ),
      ),
    );
  }
}
