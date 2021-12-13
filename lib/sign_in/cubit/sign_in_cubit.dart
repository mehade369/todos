import 'package:auth_service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required final UserRepository userRepository,
    required final AuthService authService,
  })  : _userRepository = userRepository,
        _authService = authService,
        super(const _Initial());

  final UserRepository _userRepository;
  final AuthService _authService;

  Future<void> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) async {
    emit(const _Loading());
    try {
      await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on AuthException catch (e) {
      emit(_Failure(e.message ?? e.code));
    }
  }

  Future<void> signInWithGoogle() async {
    emit(const _Loading());
    try {
      final authUser = await _authService.signInWithGoogle();

      if (authUser != null) {
        await _userRepository.createUserIfNotExists(
          User.createUser(
            uid: authUser.uid,
            createdAt: authUser.createdAt,
            email: authUser.email!,
            displayName: authUser.displayName,
            photoUrl: authUser.photoUrl,
          ),
        );
      }
    } on AuthException catch (e) {
      emit(_Failure(e.message ?? e.code));
    }
  }
}
