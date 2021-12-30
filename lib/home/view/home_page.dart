import 'package:auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_repository/todo_repository.dart';
import 'package:todos/app/app.dart';
import 'package:todos/home/home.dart';
import 'package:todos/todos/todos.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    final Key? key,
    required final AuthUser authUser,
  })  : _authUser = authUser,
        super(key: key);

  final AuthUser _authUser;

  @override
  Widget build(final BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (final context) => TodosBloc(
              todoRepository: context.read<TodoRepository>(),
              authService: context.read<AuthService>(),
            ),
          ),
        ],
        child: HomeView(authUser: _authUser),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({
    final Key? key,
    required final AuthUser authUser,
  })  : _authUser = authUser,
        super(key: key);

  final AuthUser _authUser;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              padding: const EdgeInsets.only(right: 16),
              onPressed: () => context.read<AuthBloc>().add(
                    const AuthEvent.signOut(),
                  ),
            ),
          ],
        ),
        drawer: MyDrawer(authUser: _authUser),
        body: const TodosView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute<void>(
              fullscreenDialog: true,
              builder: (final _) => BlocProvider.value(
                value: context.read<TodosBloc>(),
                child: const AddEditTodo(),
              ),
            ),
          ),
          child: const Icon(Icons.add),
        ),
      );
}
