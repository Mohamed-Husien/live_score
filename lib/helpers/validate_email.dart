String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter an email address';
  }

  // Regular expression for basic email validation
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email address';
  }

  return null; // Return null if the validation passes
}
