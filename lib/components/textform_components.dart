import 'package:flutter/material.dart';

class TextFormComponent extends StatelessWidget {
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final String? Function(String?) validator;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextInputType? textInputType;
  final bool? obscureText;
  const TextFormComponent({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    required this.validator,
    this.suffixIcon,
    this.labelText,
    this.labelStyle,
    this.floatingLabelBehavior,
    this.textInputType, this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: floatingLabelBehavior,
      ),
      validator: validator,
      keyboardType: textInputType,
    );
  }
}
