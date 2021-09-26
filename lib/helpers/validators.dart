/// Validating the given password.
String? validatePassword(String value) {
  if (value.isEmpty) {
    return "Please Re-Enter New Password";
  } else if (value.length < 6) {
    return "Password must be at least 8 characters long";
  } else {
    return null;
  }
}

/// Validating the given email.
String? validateEmail(String value) {
  Pattern pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = new RegExp(pattern.toString());
  if (!regex.hasMatch(value))
    return 'Enter a valid email address';
  else
    return null;
}

/// Validating the given names.
String? validateNames(String value) {
  if (value.isEmpty || value.length < 3) {
    return "This field is required !";
  } else {
    return null;
  }
}

/// Validating the given messages.
String? validateMessage(String value) {
  if (value.isEmpty || value.length < 3) {
    return "This field is required !";
  } else if (value.length > 200) {
    return "This field should < 200 character !";
  } else {
    return null;
  }
}

/// Validating the given phone number.
String? validateMobile(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}
