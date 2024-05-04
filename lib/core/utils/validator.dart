import 'package:easy_localization/easy_localization.dart';
import 'package:cahrity_project/core/utils/app_regx.dart';

/// Validator class

class Validator {
  static String? validatePhone({String? phone}) {
    if (phone!.isEmpty) {
      return "field_required".tr();
    } else if (phone.length < 9) {
      return "wrong_phone".tr();
    } else if (AppRegex.isPhoneNumberValid(phone)) {
      return "wrong_phone".tr();
    }
    return null;
  }

  static String? validateText({String? value}) {
    if (value!.isEmpty) {
      return "field_required".tr();
    }
    return null;
  }

  //
  static String? validateTime({DateTime? value}) {
    if (value == null) {
      return "field_required".tr();
    }
    return null;
  }

  static String? validateEmail({String? email}) {
    if (email!.isEmpty) {
      return "email_required".tr();
    } else if (!AppRegex.isEmailValid(email)) {
      return "valid_email".tr();
    }
    return null;
  }

  static String? validateConfirmEmail(String? email1, String email2) {
    if (email2.isEmpty) {
      return "email_required".tr();
    } else if (email1 != email2) {
      return "not_confirmed_email".tr();
    }
    return null;
  }

  static String? validateConfirmPassword(String? password1, String password2) {
    if (password1!.isEmpty) {
      return "password_cannot_be_emtpy".tr();
    } else if (password1 != password2) {
      return "password_not_confirmed".tr();
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return "password_cannot_be_emtpy".tr();
    } else // Password length check
    if (password.length < 8) {
      return "requirements_missing".tr();
    }
    // Uppercase letter check
   
    return null;
  }
}
