part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(final AuthUser authUser) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
