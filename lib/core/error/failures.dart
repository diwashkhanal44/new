import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String failureMessage;
  final String? description;

  Failure(this.failureMessage, this.description);
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final int? statusCode;
  ServerFailure(
      {required String failureMessage, String? description, this.statusCode})
      : super(failureMessage, description);
}

class UnknownFailure extends Failure {
  UnknownFailure({
    required String failureMessage,
    String? description,
  }) : super(failureMessage, description);
}
