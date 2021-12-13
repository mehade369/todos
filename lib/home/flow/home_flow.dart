import 'package:auth_service/auth_service.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:todos/home/home.dart';

class HomeFlow extends StatelessWidget {
  const HomeFlow({
    final Key? key,
    required final AuthUser authUser,
  })  : _authUser = authUser,
        super(key: key);

  final AuthUser _authUser;
  @override
  Widget build(final BuildContext context) => FlowBuilder<HomeFlowState>(
        state: HomeFlowState(),
        onGeneratePages: (final state, final pages) {
          return [
            MaterialPage<void>(
              child: HomePage(authUser: _authUser),
            ),
          ];
        },
      );
}
