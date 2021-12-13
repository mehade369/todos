import 'package:auth_service/auth_service.dart';

/// An interface for a class that can be implemented to provide a custom
/// [AuthService] instance.
///
/// Currently, only [FirebaseAuthService] class Implements this interface.
///
abstract class AuthService {
  /// Logs the user in with the given [email] and [password].
  /// throw [AuthException] if the login fails.
  Future<AuthUser?> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  /// Create a new user with an email and password.
  /// throw [AuthException] if the sign up fails.
  Future<AuthUser?> signUpWithEmailAndPassword({
    required final String email,
    required final String password,
  });

  /// SignOut the user from Both Firebase Auth and Google SignIn
  Future<void> signOut();

  /// Sign in with Google
  Future<AuthUser?> signInWithGoogle();

  /// Returns [AuthUser] if user is signed in, otherwise null.
  AuthUser? get currentUser;

  /// Returns a Stream of [AuthUser].
  /// if user is signed in return the user, otherwise null.
  Stream<AuthUser?> get onAuthStateChanged;
}
