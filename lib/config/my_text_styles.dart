import 'package:flutter/material.dart';
import 'package:jasur_ki/config/size_config.dart';

/// coder: Umed_Sayfulloev
/// date: 4/13/22
/// created time: 3:31 PM
/// by_user: inventor

class MyTextStyles {
  static TextStyle poppinsRegular({
    double fontSize = 5,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: "PoppinsRegular",
        fontSize: fontSize.sp,
        color: color,
      );

  static TextStyle poppinsItalic({
    double fontSize = 5,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: "PoppinsItalic",
        fontSize: fontSize.sp,
        color: color,
      );

  static TextStyle poppinsBold({
    double fontSize = 5,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: "PoppinsBold",
        fontSize: fontSize.sp,
        color: color,
      );
}