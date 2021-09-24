import 'package:equatable/equatable.dart';

class District extends Equatable {
  const District({
    required this.id,
    required this.name,
    required this.nameNp,
    required this.code,
    required this.state,
    required this.stateId,
  });

  final int id;
  final String name;
  final String nameNp;
  final String code;
  final State state;
  final int stateId;

  @override
  List<Object?> get props => [id, name, nameNp, code, state, stateId];
}

class State extends Equatable {
  const State({
    required this.id,
    required this.name,
    required this.nameNp,
  });

  final int id;
  final String name;
  final String nameNp;

  @override
  List<Object?> get props => [id, name, nameNp];
}
