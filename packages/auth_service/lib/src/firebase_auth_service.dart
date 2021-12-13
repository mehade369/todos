import 'package:auth_service/auth_service.dart';
import 'package:cache/cache.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService implements AuthService {
  FirebaseAuthService({
    final FirebaseAuth? firebaseAuth,
    final GoogleSignIn? googleSignIn,
    final CacheClient? cacheClient,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _cacheClient = cacheClient ?? CacheClient();

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';

  /// Whether or not the current environment is web
  /// Should only be overrides for testing purposes. Otherwise,
  /// defaults to [kIsWeb]
  ///
  @visibleForTesting
  bool isWeb = kIsWeb;

  final CacheClient _cacheClient;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  AuthUser? get currentUser => _cacheClient.read<AuthUser?>(userCacheKey);

  @override
  Future<AuthUser?> signInWithGoogle() async {
    try {
      late final AuthCredential credential;
      if (isWeb) {
        final userCredential = await _firebaseAuth.signInWithPopup(
          GoogleAuthProvider(),
        );

        if (userCredential.user == null) {
          throw PlatformException(
            code: 'ERROR_WEB_NO_USER',
            message: 'No user returned from signInWithPopup',
          );
        } else {
          credential = userCredential.credential!;
        }
      } else {
        final googleUser = await _googleSignIn.signIn();
        final googleAuth = await googleUser?.authentication;

        if (googleAuth == null) {
          throw PlatformException(
            message: 'Google authentication failed',
            code: 'google_auth_failed',
          );
        }
        credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      }

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      if (userCredential.user == null) {
        throw PlatformException(
          code: 'ERROR_WEB_NO_USER',
          message: 'No user returned from signInWithCredential',
        );
      }

      return userCredential.user.toAuthUser;
    } on Exception catch (e) {
      AuthException.getTheException(e);
    }
  }

  @override
  Stream<AuthUser?> get onAuthStateChanged =>
      _firebaseAuth.authStateChanges().map((final user) {
        final authUser = user?.toAuthUser;

        _cacheClient.write<AuthUser?>(userCacheKey, authUser);

        return authUser;
      });

  @override
  Future<AuthUser?> signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) async {
    try {
      final authCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authCredential.user.toAuthUser;
    } on Exception catch (e) {
      AuthException.getTheException(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } on Exception catch (e) {
      AuthException.getTheException(e);
    } finally {
      _cacheClient.write<AuthUser?>(userCacheKey, null);
    }
  }

  @override
  Future<AuthUser?> signUpWithEmailAndPassword({
    required final String email,
    required final String password,
  }) async {
    try {
      final authCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return authCredential.user.toAuthUser;
    } on Exception catch (e) {
      AuthException.getTheException(e);
    }
  }
}

extension _UserExtension on User? {
  AuthUser get toAuthUser => AuthUser(
        uid: this!.uid,
        email: this!.email,
        displayName: this!.displayName,
        photoUrl: this!.photoURL,
        createdAt: this!.metadata.creationTime,
        lastSignIn: this!.metadata.lastSignInTime,
      );
}
