import 'dart:developer';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/app/app.dart';
import 'package:todos/home/home.dart';
import 'package:todos/sign_in/sign_in.dart';

class UserFlow extends StatelessWidget {
  const UserFlow({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => FlowBuilder<AuthState>(
        state: context.watch<AuthBloc>().state,
        onGeneratePages: (final state, final pages) {
          log('UserFlow: onGeneratePages: state: $state');

          return state.when(
            authenticated: (final authUser) => [
               MaterialPage<void>(
                child: HomeFlow(authUser: authUser),
              ),
            ],
            unauthenticated: () => [
              const MaterialPage<void>(
                child: SignFlow(),
              ),
            ],
          );
        },
      );
}
