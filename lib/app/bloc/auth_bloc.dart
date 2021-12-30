import 'dart:async';

import 'package:auth_service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required final AuthService authService,
  })  : _authService = authService,
        super(authService.currentUser.toAuthState) {
    _userSubscription = authService.onAuthStateChanged.listen((final authUser) => add(_UserChanged(authUser)));

    on<AuthEvent>(
      (final event, final emit) => event.when(
        signOut: () async {
          await _authService.signOut();
        },
        userChanged: (final user) => emit(user.toAuthState),
      ),
    );
  }

  final AuthService _authService;
  late final StreamSubscription<AuthUser?> _userSubscription;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

extension _UserExtension on AuthUser? {
  AuthState get toAuthState =>
      this == null ? const _Unauthenticated() : _Authenticated(this!);
}
