import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Widget title;
  final Color backgroundColor;
  final Color? shadowColor;
  final double? elevation;
  final BorderSide? border;
  final Function() onPressed;
  const ButtonComponent({
    super.key,
    required this.title,
    this.elevation,
    this.border,
    required this.onPressed,
    required this.backgroundColor,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 311,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          side: border,
          shadowColor: shadowColor,
        ),
        child: title,
      ),
    );
  }
}
