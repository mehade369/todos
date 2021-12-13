import 'package:user_repository/user_repository.dart';

/// An Interface class that defines all the possible uses-cases that can be
/// performed by the App / user.
///
/// At the moment, only the [FirestoreUserRepository] implements this interface.
abstract class UserRepository {
  /// Create a new [User] in the database only if it doesn't exist.
  /// Uses user uid as a unique identifier, in order to avoid duplicates.
  ///
  Future<void> createUserIfNotExists(final User user);

  /// Delete a [User] from the database.
  /// Uses user uid as a unique identifier.
  Future<void> deleteUser(final String uid);

  /// Update a [User]'s info in the database.
  Future<void> updateUser(final User user);

  /// Get a [User]'s Document from the database.
  /// Returns null, if the user doesn't exist. [uid] is used as a unique identifier.
  /// Otherwise, Returns a [User] object, if the user exists.
  Future<User?> getUser(final String uid);
}
