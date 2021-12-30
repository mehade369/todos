// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosEventTearOff {
  const _$TodosEventTearOff();

  _AddTodo addTodo(
      {required String title,
      required TodoStatus status,
      required TodoPriority priority}) {
    return _AddTodo(
      title: title,
      status: status,
      priority: priority,
    );
  }

  _DeleteTodo deleteTodo(Todo todo) {
    return _DeleteTodo(
      todo,
    );
  }

  _TodosUpdated todosUpdated(List<Todo> todos) {
    return _TodosUpdated(
      todos,
    );
  }

  _UpdateTodo updateTodo(Todo todo) {
    return _UpdateTodo(
      todo,
    );
  }
}

/// @nodoc
const $TodosEvent = _$TodosEventTearOff();

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, TodoStatus status, TodoPriority priority)
        addTodo,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(List<Todo> todos) todosUpdated,
    required TResult Function(Todo todo) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodosUpdated value) todosUpdated,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res> implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  final TodosEvent _value;
  // ignore: unused_field
  final $Res Function(TodosEvent) _then;
}

/// @nodoc
abstract class _$AddTodoCopyWith<$Res> {
  factory _$AddTodoCopyWith(_AddTodo value, $Res Function(_AddTodo) then) =
      __$AddTodoCopyWithImpl<$Res>;
  $Res call({String title, TodoStatus status, TodoPriority priority});
}

/// @nodoc
class __$AddTodoCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$AddTodoCopyWith<$Res> {
  __$AddTodoCopyWithImpl(_AddTodo _value, $Res Function(_AddTodo) _then)
      : super(_value, (v) => _then(v as _AddTodo));

  @override
  _AddTodo get _value => super._value as _AddTodo;

  @override
  $Res call({
    Object? title = freezed,
    Object? status = freezed,
    Object? priority = freezed,
  }) {
    return _then(_AddTodo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TodoPriority,
    ));
  }
}

/// @nodoc

class _$_AddTodo implements _AddTodo {
  const _$_AddTodo(
      {required this.title, required this.status, required this.priority});

  @override
  final String title;
  @override
  final TodoStatus status;
  @override
  final TodoPriority priority;

  @override
  String toString() {
    return 'TodosEvent.addTodo(title: $title, status: $status, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTodo &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.priority, priority));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(priority));

  @JsonKey(ignore: true)
  @override
  _$AddTodoCopyWith<_AddTodo> get copyWith =>
      __$AddTodoCopyWithImpl<_AddTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, TodoStatus status, TodoPriority priority)
        addTodo,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(List<Todo> todos) todosUpdated,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return addTodo(title, status, priority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return addTodo?.call(title, status, priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(title, status, priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodosUpdated value) todosUpdated,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodo implements TodosEvent {
  const factory _AddTodo(
      {required String title,
      required TodoStatus status,
      required TodoPriority priority}) = _$_AddTodo;

  String get title;
  TodoStatus get status;
  TodoPriority get priority;
  @JsonKey(ignore: true)
  _$AddTodoCopyWith<_AddTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteTodoCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(
          _DeleteTodo value, $Res Function(_DeleteTodo) then) =
      __$DeleteTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(
      _DeleteTodo _value, $Res Function(_DeleteTodo) _then)
      : super(_value, (v) => _then(v as _DeleteTodo));

  @override
  _DeleteTodo get _value => super._value as _DeleteTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_DeleteTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_DeleteTodo implements _DeleteTodo {
  const _$_DeleteTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.deleteTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, TodoStatus status, TodoPriority priority)
        addTodo,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(List<Todo> todos) todosUpdated,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return deleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodosUpdated value) todosUpdated,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements TodosEvent {
  const factory _DeleteTodo(Todo todo) = _$_DeleteTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodosUpdatedCopyWith<$Res> {
  factory _$TodosUpdatedCopyWith(
          _TodosUpdated value, $Res Function(_TodosUpdated) then) =
      __$TodosUpdatedCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodosUpdatedCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$TodosUpdatedCopyWith<$Res> {
  __$TodosUpdatedCopyWithImpl(
      _TodosUpdated _value, $Res Function(_TodosUpdated) _then)
      : super(_value, (v) => _then(v as _TodosUpdated));

  @override
  _TodosUpdated get _value => super._value as _TodosUpdated;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodosUpdated(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodosUpdated implements _TodosUpdated {
  const _$_TodosUpdated(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodosEvent.todosUpdated(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodosUpdated &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$TodosUpdatedCopyWith<_TodosUpdated> get copyWith =>
      __$TodosUpdatedCopyWithImpl<_TodosUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, TodoStatus status, TodoPriority priority)
        addTodo,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(List<Todo> todos) todosUpdated,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return todosUpdated(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return todosUpdated?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (todosUpdated != null) {
      return todosUpdated(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodosUpdated value) todosUpdated,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return todosUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return todosUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (todosUpdated != null) {
      return todosUpdated(this);
    }
    return orElse();
  }
}

abstract class _TodosUpdated implements TodosEvent {
  const factory _TodosUpdated(List<Todo> todos) = _$_TodosUpdated;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$TodosUpdatedCopyWith<_TodosUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTodoCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(
          _UpdateTodo value, $Res Function(_UpdateTodo) then) =
      __$UpdateTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res> extends _$TodosEventCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(
      _UpdateTodo _value, $Res Function(_UpdateTodo) _then)
      : super(_value, (v) => _then(v as _UpdateTodo));

  @override
  _UpdateTodo get _value => super._value as _UpdateTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_UpdateTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_UpdateTodo implements _UpdateTodo {
  const _$_UpdateTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodosEvent.updateTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, TodoStatus status, TodoPriority priority)
        addTodo,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(List<Todo> todos) todosUpdated,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, TodoStatus status, TodoPriority priority)?
        addTodo,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(List<Todo> todos)? todosUpdated,
    TResult Function(Todo todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_TodosUpdated value) todosUpdated,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_TodosUpdated value)? todosUpdated,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements TodosEvent {
  const factory _UpdateTodo(Todo todo) = _$_UpdateTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Error error(String error) {
    return _Error(
      error,
    );
  }

  _Loaded loaded({required List<Todo> todos}) {
    return _Loaded(
      todos: todos,
    );
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'TodosState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function() loading,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements TodosState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TodosState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodosState {
  const factory _Error(String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_Loaded(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.todos});

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodosState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function() loading,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodosState {
  const factory _Loaded({required List<Todo> todos}) = _$_Loaded;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TodosState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodosState {
  const factory _Loading() = _$_Loading;
}
