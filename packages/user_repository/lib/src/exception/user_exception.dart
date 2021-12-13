import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_exception.freezed.dart';

/// UserException is a custom exception class for handling user related errors.
/// It is a wrapper `FirebaseException` class.

@freezed
class UserException with _$UserException implements Exception {
  const factory UserException({
    required final String code,
    final String? message,
    final StackTrace? stackTrace,
  }) = _UserException;
}
