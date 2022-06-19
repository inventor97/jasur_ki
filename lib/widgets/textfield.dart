import 'package:flutter/material.dart';
import 'package:jasur_ki/config/my_color.dart';
import 'package:jasur_ki/config/my_text_styles.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.ctrl,
    required this.label,
    this.maxLines,
    required this.inputType,
    required this.autofocus,
    required this.validator,
    this.suffixIcon,
    this.prefixIcon,
    required this.obscureText,
    this.isVerification,
  }) : super(key: key);

  final TextEditingController ctrl;
  final String label;
  final int? maxLines;
  final inputType;
  final bool autofocus;
  final validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool? isVerification;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: MyTextStyles.poppinsRegular(color: Colors.black, fontSize: 6),
      controller: ctrl,
      obscureText: obscureText,
      validator: validator,
      readOnly: true,
      autofocus: autofocus,
      keyboardType: inputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white70,
        focusColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        label: Text(label, style: MyTextStyles.poppinsRegular(color: Colors.grey, fontSize: 6)),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}