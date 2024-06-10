import 'package:flutter/cupertino.dart';

class MobileAuthProvider extends ChangeNotifier {
  String? mobileNumber;
  String? verificationId;

  updateVerificationId(String id) {
    verificationId = id;
    notifyListeners();
  }

  updateMobileNumber(String number) {
    mobileNumber = number;
    notifyListeners();
  }
}
