import 'package:flutter/material.dart';

class SmallTextField extends StatelessWidget {
  final ThemeData theme;
  final TextEditingController? controller;
  final bool enabled;
  final String? labelText;
  final String? hintText;
  final int maxLength;
  const SmallTextField({
    super.key,
    required this.theme,
    this.controller,
    this.enabled = true,
    this.labelText,
    this.hintText,
    required this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      maxLength: maxLength,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        hintText: hintText,
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.5),
        ),
        labelText: labelText,
      ),
    );
  }
}
