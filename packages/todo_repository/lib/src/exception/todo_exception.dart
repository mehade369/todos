import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_exception.freezed.dart';

/// TodoException is a custom exception class for handling user related errors.
/// It is a wrapper `FirebaseException` class.

@freezed
class TodoException with _$TodoException implements Exception {
  const factory TodoException({
    required final String code,
    final String? message,
    final StackTrace? stackTrace,
  }) = _TodoException;
}
