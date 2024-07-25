class MyValidators {
  static String? displayNamevalidator(String? value) {
    final usernameRegExp = RegExp(r'^[a-zA-Z0-9._-]{3,}$');

    if (value == null || value.isEmpty) {
      return 'Please enter a username';
    } else if (!usernameRegExp.hasMatch(value)) {
      return '''Username must be at least 3 characters long and
       can contain letters, numbers, dots,underscores, and hyphens''';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  static String? passwordValidator(String? value) {
    final passwordRegExp = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (!passwordRegExp.hasMatch(value)) {
      return 'Password must be at least 8 characters long and contain both letters and numbers';
    }
    return null;
  }

  static String? seperatedPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'Password must contain at least one digit';
    }
    if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }


  static String? repeatPasswordValidator({String? value, String? password}) {
    if (value!.isEmpty) {
      return 'Please Confirm Your password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? checkValidation({String? value, String? toBeReturnedString}) {
    if (value!.isEmpty) {
      return toBeReturnedString;
    }
    return null;
  }
}
