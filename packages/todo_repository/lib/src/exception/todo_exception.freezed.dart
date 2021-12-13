// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoExceptionTearOff {
  const _$TodoExceptionTearOff();

  _TodoException call(
      {required String code, String? message, StackTrace? stackTrace}) {
    return _TodoException(
      code: code,
      message: message,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $TodoException = _$TodoExceptionTearOff();

/// @nodoc
mixin _$TodoException {
  String get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoExceptionCopyWith<TodoException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoExceptionCopyWith<$Res> {
  factory $TodoExceptionCopyWith(
          TodoException value, $Res Function(TodoException) then) =
      _$TodoExceptionCopyWithImpl<$Res>;
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class _$TodoExceptionCopyWithImpl<$Res>
    implements $TodoExceptionCopyWith<$Res> {
  _$TodoExceptionCopyWithImpl(this._value, this._then);

  final TodoException _value;
  // ignore: unused_field
  final $Res Function(TodoException) _then;

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
abstract class _$TodoExceptionCopyWith<$Res>
    implements $TodoExceptionCopyWith<$Res> {
  factory _$TodoExceptionCopyWith(
          _TodoException value, $Res Function(_TodoException) then) =
      __$TodoExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String? message, StackTrace? stackTrace});
}

/// @nodoc
class __$TodoExceptionCopyWithImpl<$Res>
    extends _$TodoExceptionCopyWithImpl<$Res>
    implements _$TodoExceptionCopyWith<$Res> {
  __$TodoExceptionCopyWithImpl(
      _TodoException _value, $Res Function(_TodoException) _then)
      : super(_value, (v) => _then(v as _TodoException));

  @override
  _TodoException get _value => super._value as _TodoException;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_TodoException(
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

class _$_TodoException implements _TodoException {
  const _$_TodoException({required this.code, this.message, this.stackTrace});

  @override
  final String code;
  @override
  final String? message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'TodoException(code: $code, message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoException &&
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
  _$TodoExceptionCopyWith<_TodoException> get copyWith =>
      __$TodoExceptionCopyWithImpl<_TodoException>(this, _$identity);
}

abstract class _TodoException implements TodoException {
  const factory _TodoException(
      {required String code,
      String? message,
      StackTrace? stackTrace}) = _$_TodoException;

  @override
  String get code;
  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$TodoExceptionCopyWith<_TodoException> get copyWith =>
      throw _privateConstructorUsedError;
}
