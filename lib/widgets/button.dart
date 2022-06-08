import 'package:flutter/material.dart';
import 'package:jasur_ki/config/my_color.dart';

import '../config/my_text_styles.dart';


class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isFilled,
    required this.isLoading,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final bool isFilled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: isFilled ? MyColors.primaryColor : Colors.white),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(13.0),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isLoading ? CircularProgressIndicator(color: isFilled ? Colors.white : MyColors.primaryColor) : const Text(""),
                  Text(title, style: MyTextStyles.poppinsBold(fontSize: 6, color: isFilled ? Colors.white : MyColors.primaryColor)),
                ],
              )),
        ),
      ),
    );
  }
}