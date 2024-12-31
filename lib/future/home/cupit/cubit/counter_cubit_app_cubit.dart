import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:ntitask2/core/Colors/colors.dart';
import 'package:ntitask2/core/Images/images.dart';
import 'package:ntitask2/core/Strings/strings_app.dart';

part 'counter_cubit_app_state.dart';

class CounterCubitAppCubit extends Cubit<CounterCubitAppState> {
  CounterCubitAppCubit() : super(CounterCubitAppInitial());

  double count = 0;
  String image = Images.image1;
  String text = StringApp.name1;
  Color color = Colorss.cloroblue;
  countplus() {
    count++;
    emit(Updatecount());
  }

  countrest() {
    count = 0;
    emit(Updatecount());
  }

  void changeimage1() {
    image = Images.image1;
    color = Colorss.cloroblue;
    emit(Counterimage());
  }

  void changeimage2() {
    image = Images.image2;
    color = Colorss.cloroorang;
    emit(Counterimage());
  }

  void changeimage3() {
    image = Images.image3;
    color = Colorss.clorolightGreenAccent;
    emit(Counterimage());
  }

  changetext1() {
    text = StringApp.name1;
    emit(Changetext());
  }

  changetext2() {
    text = StringApp.name2;
    emit(Changetext());
  }

  changetext3() {
    text = StringApp.name3;
    emit(Changetext());
  }

  changetext4() {
    text = StringApp.name4;
    emit(Changetext());
  }
}
