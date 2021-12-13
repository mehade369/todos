// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserExceptionTearOff {
  const _$UserExceptionTearOff();

  _UserException call(
      {required String code, String? message, StackTrace? stackTrace}) {
    return _UserException(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $UserException = _$UserExceptionTearOff();

/// @nodoc
mixin _$UserException {
  String get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExceptionCopyWith<UserException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExceptionCopyWith<$Res> {
  factory $UserExceptionCopyWith(
          UserException value, $Res Function(UserException) then) =
      _$UserExceptionCopyWithImpl<$Res>;
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class _$UserExceptionCopyWithImpl<$Res>
    implements $UserExceptionCopyWith<$Res> {
  _$UserExceptionCopyWithImpl(this._value, this._then);

  final UserException _value;
  // ignore: unused_field
  final $Res Function(UserException) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class _$UserExceptionCopyWith<$Res>
    implements $UserExceptionCopyWith<$Res> {
  factory _$UserExceptionCopyWith(
          _UserException value, $Res Function(_UserException) then) =
      __$UserExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class __$UserExceptionCopyWithImpl<$Res>
    extends _$UserExceptionCopyWithImpl<$Res>
    implements _$UserExceptionCopyWith<$Res> {
  __$UserExceptionCopyWithImpl(
      _UserException _value, $Res Function(_UserException) _then)
      : super(_value, (v) => _then(v as _UserException));

  @override
  _UserException get _value => super._value as _UserException;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_UserException(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_UserException implements _UserException {
  const _$_UserException({required this.code, this.message, this.stackTrace});

  @override
  final String code;
  @override
  final String? message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'UserException(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserException &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$UserExceptionCopyWith<_UserException> get copyWith =>
      __$UserExceptionCopyWithImpl<_UserException>(this, _$identity);
}

abstract class _UserException implements UserException {
  const factory _UserException(
      {required String code,
      String? message,
      StackTrace? stackTrace}) = _$_UserException;

  @override
  String get code;
  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$UserExceptionCopyWith<_UserException> get copyWith =>
      throw _privateConstructorUsedError;
}
