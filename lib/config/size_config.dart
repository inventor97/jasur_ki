/// coder: Umed_Sayfulloev
/// date: 4/13/22
/// created time: 3:32 PM
/// by_user: inventor


import 'dart:math' show pow, sqrt;

import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late double h;
  static late double v;
  static late double sp;
  static late double d;

  static void initWidthAndHeight(context) {
    final size = MediaQuery.of(context).size;
    h = size.width / 100;
    v = size.height / 100;
    d = sqrt((pow(size.width, 2) + pow(size.height, 2))) / 100;
    sp = sqrt((pow(size.width, 2) + pow(size.height, 2))) / 350;
  }
}

extension SizeConfigExtension on num {
  double get h => this * SizeConfig.h;

  double get v => this * SizeConfig.v;

  double get sp => this * 2.1;

  double get d => this * SizeConfig.d;
}
