extension StringValidatingExtension on String? {
  String? get isValidEmail {
    if (this == null || this!.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
        .hasMatch(this!)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? get isValidPassword {
    if (this == null || this!.isEmpty) {
      return 'Please enter your password';
    } else if (this!.length < 6) {
      return 'Password must be at least 6 characters';
    } else if (this!.length > 20) {
      return 'Password must be less than 20 characters';
    }

    return null;
  }

  // isValidName

  String? get isValidName {
    if (this == null || this!.isEmpty) {
      return 'Please enter your name';
    } else if (this!.length < 3) {
      return 'Name must be at least 3 characters';
    } else if (this!.length > 20) {
      return 'Name must be less than 20 characters';
    }

    return null;
  }

  /// Returns true if the String is null or empty
  /// 
  /// ```dart
  /// String? str = null;
  /// str.isNullOrEmpty; // true
  /// 
  /// str = '';
  /// str.isNullOrEmpty; // true
  /// 
  /// str = 'some string';
  /// str.isNullOrEmpty; // false
  /// ```

  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }
}

extension StringCapitalizeExtension on String {
  /// Returns a copy of this string having its first letter uppercased, or the
  /// original string, if it's empty or already starts with an upper case
  /// letter.
  ///
  /// ```dart
  /// print('abcd'.capitalize()) // Abcd
  /// print('Abcd'.capitalize()) // Abcd
  /// ```
  String capitalize() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toUpperCase();
      default:
        return substring(0, 1).toUpperCase() + substring(1);
    }
  }

  /// Returns a copy of this string having its first letter lowercased, or the
  /// original string, if it's empty or already starts with a lower case letter.
  ///
  /// ```dart
  /// print('abcd'.uncapitalized()) // abcd
  /// print('Abcd'.uncapitalized()) // abcd
  /// ```
  String uncapitalized() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toLowerCase();
      default:
        return substring(0, 1).toLowerCase() + substring(1);
    }
  }
}
