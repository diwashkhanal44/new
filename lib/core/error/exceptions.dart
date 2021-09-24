import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
abstract class ServerException with _$ServerException implements Exception {
  const factory ServerException({
    required String message,
    String? description,
    int? statusCode,
  }) = _ServerException;
}

class CacheException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  CacheException({required this.message, this.stackTrace});
}
