import 'package:flutter/material.dart';
import 'package:ntitask2/core/Colors/Fonts/fonstapp.dart';

class counterICon extends StatelessWidget {
  const counterICon({
    super.key,
    this.ontap,
    this.icondata,
  });
  final void Function()? ontap;
  final IconData? icondata;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: CircleAvatar(
        radius: 30,
        child: Icon(
          icondata,
          size: SizeApp.s20,
        ),
      ),
    );
  }
}
