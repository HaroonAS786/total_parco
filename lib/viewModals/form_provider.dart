import 'package:flutter/material.dart';
import 'package:total_parco/modals/validation_modal.dart';
import 'package:total_parco/utils/extension.dart';

class FormProvider extends ChangeNotifier {
  ValidationModel _email = ValidationModel(null, null);
  ValidationModel _password = ValidationModel(null, null);

  ValidationModel get email => _email;
  ValidationModel get password => _password;

  void validateEmail(String? val) {
    if (val != null && val.isValidEmail) {
      _email = ValidationModel(val, null);
    } else {
      _email = ValidationModel(null, 'Incorrect email');
    }
    notifyListeners();
  }

  void validatePassword(String? val) {
    if (val!.length < 6) {
      _password =
          ValidationModel(null, 'Password length should be greater than 6');
    } else {
      _password = ValidationModel(val, null);
    }

    notifyListeners();
  }

  bool get validate {
    return _email.value != null && _password.value != null;
  }
}

