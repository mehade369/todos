// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthExceptionTearOff {
  const _$AuthExceptionTearOff();

  _AuthException call(
      {required String code, String? message, StackTrace? stackTrace}) {
    return _AuthException(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $AuthException = _$AuthExceptionTearOff();

/// @nodoc
mixin _$AuthException {
  String get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthExceptionCopyWith<AuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;

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
abstract class _$AuthExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$AuthExceptionCopyWith(
          _AuthException value, $Res Function(_AuthException) then) =
      __$AuthExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class __$AuthExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$AuthExceptionCopyWith<$Res> {
  __$AuthExceptionCopyWithImpl(
      _AuthException _value, $Res Function(_AuthException) _then)
      : super(_value, (v) => _then(v as _AuthException));

  @override
  _AuthException get _value => super._value as _AuthException;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_AuthException(
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

class _$_AuthException with DiagnosticableTreeMixin implements _AuthException {
  const _$_AuthException({required this.code, this.message, this.stackTrace});

  @override
  final String code;
  @override
  final String? message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthException(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthException'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthException &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  _$AuthExceptionCopyWith<_AuthException> get copyWith =>
      __$AuthExceptionCopyWithImpl<_AuthException>(this, _$identity);
}

abstract class _AuthException implements AuthException {
  const factory _AuthException(
      {required String code,
      String? message,
      StackTrace? stackTrace}) = _$_AuthException;

  @override
  String get code;
  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$AuthExceptionCopyWith<_AuthException> get copyWith =>
      throw _privateConstructorUsedError;
}
