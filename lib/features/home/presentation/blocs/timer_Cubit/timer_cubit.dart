import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(InitState(dateTime: DateTime.now()));

  initTimer() {
    Timer.periodic(Duration(seconds: 1),
        (timer) => emit(Ticking(dateTime: DateTime.now())));
  }
}

abstract class TimerState extends Equatable {
  final DateTime dateTime;

  TimerState({required this.dateTime});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class InitState extends TimerState {
  InitState({required DateTime dateTime}) : super(dateTime: dateTime);
}

class Ticking extends TimerState {
  Ticking({required DateTime dateTime}) : super(dateTime: dateTime);

  @override
  List<Object?> get props => [dateTime];
}
