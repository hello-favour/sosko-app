class AppValidator {
  //empty text validator
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return "$fieldName is required";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    //REGULAR EXPRESSION FOR EMAIL VALIDATOR
    final emailRegExp = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    //CHECK FOR MINIMUM PASSWORD LENGTH
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }

    //CHECK FOR UPPER LETTERS
    if (!value.contains(RegExp(r"[A-Z]"))) {
      return "Password must contain at least one uppercase letter";
    }

    //CHECK FOR NUMBER
    if (!value.contains(RegExp(r"[0-9]"))) {
      return "Password must contain at least one number";
    }

    //CHECK FOR SPECIAL CHARACTERS
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?": {}|<>]'))) {
      return "Password must contain at least one special character";
    }
    return null;
  }
}
