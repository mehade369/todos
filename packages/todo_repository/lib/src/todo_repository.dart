import 'package:todo_repository/todo_repository.dart';

abstract class TodoRepository {
  Stream<List<Todo>> todos(final String userId);

  Future<void> addTodo(final Todo todo);

  Future<void> deleteTodo(final Todo todo);

  Future<void> updateTodo(final Todo todo);

  Future<void> clearCompleted();
}
