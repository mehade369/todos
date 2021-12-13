import 'dart:async';

import 'package:auth_service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_repository/todo_repository.dart';

part 'todos_bloc.freezed.dart';
part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc({
    required final TodoRepository todoRepository,
    required final AuthService authService,
  })  : _todoRepository = todoRepository,
        _authService = authService,
        super(const _Loading()) {
    _todosSubscription = _todoRepository
        .todos(authService.currentUser!.uid)
        .listen((final todos) {
      add(_TodosUpdated(todos));
    });

    on<TodosEvent>((final event, final emit) {
      event.when(
        updateTodo: (final todo) async {
          try {
            await _todoRepository.updateTodo(todo);
          } on TodoException catch (e) {
            emit(_Error(e.message ?? e.code));
          }
        },
        deleteTodo: (final todo) async {
          try {
            await _todoRepository.deleteTodo(todo);
          } on TodoException catch (e) {
            emit(_Error(e.message ?? e.code));
          }
        },
        todosUpdated: (final todos) async {
          try {
            emit(
              todos.isEmpty ? const _Empty() : _Loaded(todos: todos),
            );
          } on TodoException catch (e) {
            emit(_Error(e.message ?? e.code));
          }
        },
        addTodo: (
          final title,
          final status,
          final priority,
        ) async {
          try {
            final userUid = _authService.currentUser!.uid;

            final todo = Todo.addNew(
              userUid: userUid,
              title: title,
              status: status,
              priority: priority,
            );

            await _todoRepository.addTodo(todo);
          } on TodoException catch (e) {
            emit(_Error(e.message ?? e.code));
          }
        },
      );
    });
  }

  final AuthService _authService;
  final TodoRepository _todoRepository;
  late final StreamSubscription<List<Todo>> _todosSubscription;

  @override
  Future<void> close() {
    _todosSubscription.cancel();
    return super.close();
  }
}
