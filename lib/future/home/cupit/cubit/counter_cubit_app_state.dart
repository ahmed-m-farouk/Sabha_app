part of 'counter_cubit_app_cubit.dart';

@immutable
sealed class CounterCubitAppState {}

final class CounterCubitAppInitial extends CounterCubitAppState {}

final class Updatecount extends CounterCubitAppState {}

final class Counterimage extends CounterCubitAppState {}

final class Changetext extends CounterCubitAppState {}
