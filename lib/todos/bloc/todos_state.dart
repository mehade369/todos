part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.loading() = _Loading;
  const factory TodosState.loaded({required final List<Todo> todos}) = _Loaded;

  const factory TodosState.empty() = _Empty;

  const factory TodosState.error(final String error) = _Error;
}
