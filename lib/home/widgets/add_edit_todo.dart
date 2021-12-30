import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/todos/todos.dart';

class AddEditTodo extends StatefulWidget {
  const AddEditTodo({
    final Key? key,
  }) : super(key: key);

  @override
  State<AddEditTodo> createState() => _AddEditTodoState();
}

class _AddEditTodoState extends State<AddEditTodo> {
  late final GlobalKey<FormState> _fromKey;
  late final TextEditingController _textEditingController;
  var _todoPriority = TodoPriority.low;
  var _todoStatus = TodoStatus.notStarted;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _fromKey = GlobalKey<FormState>();
    super.initState();
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
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Title',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _textEditingController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.done,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your todo',
                    ),
                    validator: (final value) {
                      if (value.isNullOrEmpty) {
                        return 'Please enter a title';
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Priority:',
                        style: Theme.of(context).textTheme.headline6,
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
                        style: Theme.of(context).textTheme.headline6,
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
            child: _textEditingController.text.isEmpty ||
                    _fromKey.currentState!.validate()
                ? const Icon(Icons.dangerous_outlined)
                : const Icon(Icons.check),
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

                _textEditingController.clear();
              }
            },
          ),
        ),
      );
}
