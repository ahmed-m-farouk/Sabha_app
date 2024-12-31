import 'package:flutter/material.dart';
import 'package:ntitask2/core/Colors/Textstyle/text_style.dart';

class StringsDrawer extends StatelessWidget {
  const StringsDrawer({super.key, required this.text, required this.ontap});
  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        color: Colors.transparent,
        child: Text(
          text,
          style: textStyleapp().copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
