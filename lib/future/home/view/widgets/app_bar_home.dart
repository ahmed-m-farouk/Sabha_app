import 'package:flutter/material.dart';
import 'package:ntitask2/core/Colors/Textstyle/text_style.dart';

import 'package:ntitask2/future/home/cupit/cubit/counter_cubit_app_cubit.dart';

AppBar appBarHome({
  required final String text,
  required final CounterCubitAppCubit cupti,
}) {
  return AppBar(
    backgroundColor: cupti.color,
    centerTitle: true,
    title: Text(
      text,
      style: textStyleapp(),
    ),
  );
}
