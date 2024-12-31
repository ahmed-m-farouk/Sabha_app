import 'package:flutter/material.dart';
import 'package:ntitask2/core/Colors/Textstyle/text_style.dart';
import 'package:ntitask2/core/Strings/strings_app.dart';
import 'package:ntitask2/future/home/cupit/cubit/counter_cubit_app_cubit.dart';
import 'package:ntitask2/future/home/view/widgets/row_images.dart';
import 'package:ntitask2/future/home/view/widgets/strings_drawer.dart';

class BulidDrawer extends StatelessWidget {
  const BulidDrawer({super.key, required this.cupti});
  final CounterCubitAppCubit cupti;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(cupti.image),
            ),
          ),
          StringsDrawer(
              text: StringApp.name1,
              ontap: () {
                cupti.changetext1();
              }),
          SizedBox(
            height: 10,
          ),
          StringsDrawer(
              text: StringApp.name2,
              ontap: () {
                cupti.changetext2();
              }),
          SizedBox(
            height: 10,
          ),
          StringsDrawer(
              text: StringApp.name3,
              ontap: () {
                cupti.changetext3();
              }),
          SizedBox(
            height: 10,
          ),
          StringsDrawer(
              text: StringApp.name4,
              ontap: () {
                cupti.changetext4();
              }),
          SizedBox(
            height: 200,
          ),
          Column(
            children: [
              Text(
                StringApp.changebackground,
                style: textStyleapp().copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              RowImages(cupit: cupti),
            ],
          )
        ],
      ),
    );
  }
}
