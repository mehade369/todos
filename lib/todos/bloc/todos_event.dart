part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.addTodo({
    required final String title,
    required final TodoStatus status,
    required final TodoPriority priority,
  }) = _AddTodo;

  const factory TodosEvent.deleteTodo(final Todo todo) = _DeleteTodo;

  const factory TodosEvent.todosUpdated(final List<Todo> todos) = _TodosUpdated;

  const factory TodosEvent.updateTodo(final Todo todo) = _UpdateTodo;
}
