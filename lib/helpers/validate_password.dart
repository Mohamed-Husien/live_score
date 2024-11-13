String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }

  // Validate password complexity
  if (value.length < 8) {
    return 'Password must be at least 8 characters long';
  }

  // Check for uppercase, lowercase, numbers, and special characters
  final hasUppercase = value.contains(RegExp(r'[A-Z]'));
  final hasLowercase = value.contains(RegExp(r'[a-z]'));
  final hasDigits = value.contains(RegExp(r'[0-9]'));
  final hasSpecialChars = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  if (!(hasUppercase && hasLowercase && hasDigits && hasSpecialChars)) {
    return 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character';
  }

  return null; // Return null if the validation passes
}

String? validatePassword2(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null; // Return null if the validation passes
}
