import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ntitask2/future/home/cupit/cubit/counter_cubit_app_cubit.dart';
import 'package:ntitask2/future/home/view/widgets/app_bar_home.dart';
import 'package:ntitask2/future/home/view/widgets/bulid_drawer.dart';
import 'package:ntitask2/future/home/view/widgets/icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitAppCubit(),
      child: BlocConsumer<CounterCubitAppCubit, CounterCubitAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          CounterCubitAppCubit cupti = BlocProvider.of(context);
          return Scaffold(
            drawer: BulidDrawer(cupti: cupti),
            appBar: appBarHome(
              text: cupti.text,
              cupti: cupti,
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(cupti.image), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      counterICon(
                        icondata: Icons.restart_alt_outlined,
                        ontap: () {
                          cupti.countrest();
                        },
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      cupti.countplus();
                    },
                    child: CircleAvatar(
                      backgroundColor: cupti.color.withOpacity(0.5),
                      radius: 150,
                      child: Text(
                        cupti.count.toInt().toString(),
                        style: const TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
