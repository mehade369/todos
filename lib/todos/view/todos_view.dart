import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/home/home.dart';
import 'package:todos/todos/todos.dart';

class TodosView extends StatelessWidget {
  const TodosView({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Center(
        child: BlocBuilder<TodosBloc, TodosState>(
          builder: (final context, final state) {
            return state.when(
              loading: Loading.new,
              empty: () => const Text('No todos found yet'),
              loaded: (final todos) => ListView.separated(
                separatorBuilder: (final context, final index) =>
                    const SizedBox(height: 8),
                padding: const EdgeInsets.all(16),
                itemCount: todos.length,
                itemBuilder: (final context, final index) {
                  final todo = todos[index];
                  return Slidable(
                    key: Key(todo.uid),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      // All actions are defined in the children parameter.
                      children: [
                        // A SlidableAction can have an icon and/or a label.
                        SlidableAction(
                          onPressed: (final context) {
                            context
                                .read<TodosBloc>()
                                .add(TodosEvent.deleteTodo(todo));
                          },
                          backgroundColor: Theme.of(context).colorScheme.error,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (final context) {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                fullscreenDialog: true,
                                builder: (final _) => BlocProvider.value(
                                  value: context.read<TodosBloc>(),
                                  child: AddEditTodo(
                                    title: todo.title,
                                  ),
                                ),
                              ),
                            );
                          },
                          backgroundColor:
                              Theme.of(context).colorScheme.secondaryVariant,
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: 'Edit',
                        ),
                      ],
                    ),
                    child: _ListCard(todo: todo),
                  );
                },
              ),
              error: Error.new,
            );
          },
        ),
      );
}

class _ListCard extends StatelessWidget {
  const _ListCard({
    final Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  Widget build(final BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        title: Text(todo.title),
        subtitle: Text(timeago.format(todo.updatedAt)),
        trailing: Container(
          decoration: BoxDecoration(
            color: todo.status.toColor,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 12,
          width: 12,
        ),
      ),
    );
  }
}

extension _TodoStatusToColor on TodoStatus {
  Color get toColor {
    switch (this) {
      case TodoStatus.completed:
        return Colors.green;
      case TodoStatus.inProgress:
        return Colors.blue;
      case TodoStatus.notStarted:
        return Colors.grey;
    }
  }
}
