part of 'radio_cubit.dart';

abstract class RadioState extends Equatable {
  const RadioState();
}

class Paused extends RadioState {
  @override
  List<Object> get props => [];
}

class Playing extends RadioState {
  final Datum currentStationid;

  Playing({required this.currentStationid});
  @override
  List<Object?> get props => [currentStationid];
}
