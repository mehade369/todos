part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) final bool isLoading,
    final String? error,
  }) = _SignUpState;
}
