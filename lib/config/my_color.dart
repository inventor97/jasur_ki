
import 'package:flutter/material.dart';

class MyColors {

  static const onBoardingBackgroundColor = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          boldColor,
          boldColor,
          secondaryColor
        ],
      )
  );

  static const notActiveColor = Color(0xffc5c5c5);

  static const primaryColor = Color(0xff3e72ce);
  static const primaryColorBlur = Color(0xe63e72ce);
  static const secondaryColor = Color(0xffea7a2f);
  static const boldColor = Color(0xff2a4e8b);

}