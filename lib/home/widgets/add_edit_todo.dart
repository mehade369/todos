import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/todos/todos.dart';

class AddEditTodo extends StatefulWidget {
  const AddEditTodo({
    final Key? key,
    final this.title,
  }) : super(key: key);

  final String? title;

  @override
  State<AddEditTodo> createState() => _AddEditTodoState();
}

class _AddEditTodoState extends State<AddEditTodo> {
  late final TextEditingController _textEditingController;

  late final _fromKey = GlobalKey<FormState>();

  TodoPriority _todoPriority = TodoPriority.low;
  TodoStatus _todoStatus = TodoStatus.notStarted;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.title);
    _fromKey.currentState?.validate();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => UnFocus(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Add Todo'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _fromKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Title',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TextFormField(
                    controller: _textEditingController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 3,
                    validator: (final value) {
                      if (value != null && value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Priority:',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      DropdownButton<TodoPriority>(
                        value: _todoPriority,
                        items: const [
                          DropdownMenuItem<TodoPriority>(
                            value: TodoPriority.high,
                            child: Text('High'),
                          ),
                          DropdownMenuItem<TodoPriority>(
                            value: TodoPriority.medium,
                            child: Text('Medium'),
                          ),
                          DropdownMenuItem<TodoPriority>(
                            value: TodoPriority.low,
                            child: Text('Low'),
                          ),
                        ],
                        onChanged: (final value) {
                          if (value != null) {
                            setState(() {
                              _todoPriority = value;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Status:',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      DropdownButton<TodoStatus>(
                        value: _todoStatus,
                        items: const [
                          DropdownMenuItem<TodoStatus>(
                            value: TodoStatus.completed,
                            child: Text('Completed'),
                          ),
                          DropdownMenuItem<TodoStatus>(
                            value: TodoStatus.inProgress,
                            child: Text('In Progress'),
                          ),
                          DropdownMenuItem<TodoStatus>(
                            value: TodoStatus.notStarted,
                            child: Text('Not Started'),
                          ),
                        ],
                        onChanged: (final value) {
                          if (value != null) {
                            setState(() {
                              _todoStatus = value;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _textEditingController.text.isEmpty
                  ? const Icon(
                      Icons.dangerous_outlined,
                      key: Key('adf'),
                    )
                  : const Icon(
                      Icons.check,
                      key: Key('aasdfsdf'),
                    ),
            ),
            onPressed: () {
              if (_fromKey.currentState!.validate()) {
                context.read<TodosBloc>().add(
                      TodosEvent.addTodo(
                        title: _textEditingController.text,
                        status: _todoStatus,
                        priority: _todoPriority,
                      ),
                    );
                Navigator.of(context).pop();
              }
            },
          ),
        ),
      );
}
