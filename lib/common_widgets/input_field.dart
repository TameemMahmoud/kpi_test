import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/resources/app_colors.dart';

class MyInputFiled extends StatelessWidget {
  const MyInputFiled({
    super.key,
    required this.hint,
    required this.label,
    required this.controller,
    required this.inputIcon,
    this.suffixIcon,
    this.borderRadious = 40.0,
    this.keyboard = TextInputType.text,
    this.iconColor = AppColors.mainColor,
    this.isPass = false,
    this.enable = true,
    this.format,
    this.onSuffixPressed,
    required this.validate,
    this.action = TextInputAction.next,
    this.prefix,
  });

  final TextInputAction action;

  final TextEditingController controller;
  final double borderRadious;
  final String hint;
  final String label;
  final TextInputType keyboard;
  final IconData? inputIcon;
  final IconData? suffixIcon;
  final Color iconColor;
  final bool isPass;
  final bool enable;
  final List<TextInputFormatter>? format;
  final Function()? onSuffixPressed;
  final String? Function(String?)? validate;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enable,
      textInputAction: action,
      obscureText: isPass,
      validator: validate,
      keyboardType: keyboard,
      decoration: InputDecoration(
        prefixIcon: Icon(
          inputIcon,
          color: Colors.grey,
        ),
        suffixIcon:
            IconButton(onPressed: onSuffixPressed, icon: Icon(suffixIcon)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.blue)),
        fillColor: Colors.grey,
        hintText: hint,
        prefix: prefix,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
        labelStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey.shade300)),
        // labelText: label,
      ),
    );
  }
}
