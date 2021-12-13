import 'package:auth_service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required final UserRepository userRepository,
    required final AuthService authService,
  })  : _userRepository = userRepository,
        _authService = authService,
        super(const _SignUpState());
  final UserRepository _userRepository;
  final AuthService _authService;

  Future<void> signUpWithEmailAndPassword({
    required final String email,
    required final String password,
    required final String name,
  }) async {
    emit(state.copyWith(isLoading: true));

    try {
      final authUser = await _authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (authUser != null) {
        await _userRepository.createUserIfNotExists(
          User.createUser(
            uid: authUser.uid,
            email: authUser.email ?? email,
            displayName: authUser.displayName ?? name,
            photoUrl: authUser.photoUrl,
          ),
        );
      }
    } on AuthException catch (e) {
      emit(state.copyWith(isLoading: false, error: e.message));
    }
  }
}
