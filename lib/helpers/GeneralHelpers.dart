
import 'package:get/get.dart';


class GeneralHelpers {
  static String? validateUserName(String? value) {
    if (value!.isEmpty) return 'field is Required.'.tr;
    if (value.isEmpty) {
      return 'Please enter text.'.tr;
    }
    return null;
  }

  static bool _isPrime(int n) {
    for (int i = 2; i < n; i++) {
      if (n % i == 0) return true;
    }
    return false;
  }

  static String? validatePrimeNumber(String? value) {
    try {
      if(_isPrime(int.parse(value ?? "0"))) {
        return 'Tub son emas'.tr;
      }
      return null;
    }catch(e){
      return 'Tub son emas'.tr;
    }
  }
}