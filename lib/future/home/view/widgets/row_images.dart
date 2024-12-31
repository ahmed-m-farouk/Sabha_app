import 'package:flutter/material.dart';
import 'package:ntitask2/core/Images/images.dart';
import 'package:ntitask2/future/home/cupit/cubit/counter_cubit_app_cubit.dart';

class RowImages extends StatelessWidget {
  const RowImages({
    super.key,
    required this.cupit,
  });
  final CounterCubitAppCubit cupit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            cupit.changeimage1();
          },
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Images.image1),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
            cupit.changeimage2();
          },
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Images.image2),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
            cupit.changeimage3();
          },
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Images.image3),
          ),
        ),
      ],
    );
  }
}
