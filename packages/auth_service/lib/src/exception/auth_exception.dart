import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

/// An exception that can be thrown when an error occurs during authentication.
/// This is a wrapper around [FirebaseAuthException] that provides a more
/// user-friendly error message.
/// See: https://firebase.flutter.dev/docs/auth/error-messages
///
@freezed
class AuthException with _$AuthException implements Exception {
  const factory AuthException({
    required final String code,
    final String? message,
    final StackTrace? stackTrace,
  }) = _AuthException;

  static void getTheException(final Exception e) {
    log('AuthException getTheException : $e');
    if (e is FirebaseAuthException) {
      switch (e.code) {

        /// - **email-already-in-use**:
        ///  - Thrown if there already exists an account with the given email address.

        case 'email-already-in-use':
          throw AuthException(
            code: e.code,
            message: 'The email address is already in use by another account.',
          );

        /// - **invalid-email**:
        ///  - Thrown if the email address is not valid.

        case 'invalid-email':
          throw AuthException(
            code: e.code,
            message: 'The email address is invalid.',
          );

        /// - **operation-not-allowed**:
        ///  - Thrown if email/password accounts are not enabled. Enable
        ///    email/password accounts in the Firebase Console, under the Auth tab.

        case 'operation-not-allowed':
          throw AuthException(
            code: e.code,
            // account creating disabled
            message: 'Account creation is not allowed',
          );

        /// - **weak-password**:
        ///  - Thrown if the password is not strong enough.

        case 'weak-password':
          throw AuthException(
            code: e.code,
            message: 'The password is not strong enough.',
          );

        /// - **user-disabled**:
        ///  - Thrown if the user corresponding to the given email has been disabled.

        case 'user-disabled':
          throw AuthException(
            code: e.code,
            message: 'The user has been disabled.',
          );

        /// - **user-not-found**:
        ///  - Thrown if there is no user corresponding to the given email.
        case 'user-not-found':
          throw AuthException(
            code: e.code,
            message: 'There is no user corresponding to the given email.',
          );

        /// - **wrong-password**:
        ///  - Thrown if the password is invalid for the given email, or the account
        ///    corresponding to the email does not have a password set.

        case 'wrong-password':
          throw AuthException(
            code: e.code,
            message: 'The password is invalid for the given email.',
          );

        /// - **network-request-failed**:
        ///  - Thrown if the authentication server is not reachable.
        case 'network-request-failed':
          throw AuthException(
            code: e.code,
            message: 'Please check your internet connection and try again.',
          );
        default:
          throw AuthException(
            code: e.code,
            message: e.message,
          );
      }
    } else if (e is PlatformException) {
      switch (e.code) {

        /// - **network_error**:
        /// signInWithCredential || GoogleSignIn
        /// - Thrown if the app is offline or on a network that does not support
        case 'network_error':
          throw AuthException(
            code: e.code,
            message: 'No internet connection',
          );

        /// - **google_auth_failed**:
        /// signInWithCredential || GoogleSignIn
        /// - Thrown if the user backs out of the Google sign-in flow/popUp.
        case 'google_auth_failed':
          throw AuthException(
            code: e.code,
            message: 'Google authentication failed.',
          );
        case 'google_auth_canceled':
          throw AuthException(
            code: e.code,
            message: 'Google authentication canceled.',
          );
        case 'sign_in_failed':
          throw AuthException(
            code: e.code,
            message: 'Google Sign in failed',
          );
        default:
          throw AuthException(
            code: e.code,
            message: 'Unknown PlatformException',
          );
      }
    }
  }
}
