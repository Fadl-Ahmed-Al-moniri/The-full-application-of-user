import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "اسم مستخدم غير صالح";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "البريد الإلكتروني غير صالح";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "رقم هاتف غير صالح";
    }
  }
  if (type == "password") {
    if (!GetUtils.isPassport(val)) {
      return "كلمة السر غير صالحة";
    }
  }

  if (val.isEmpty) {
    return "لا يمكن أن تكون فارغة";
  }

  if (val.length < min) {
    return "لا يمكن أن تكون  أقل من $min";
  }
  if (val.length > max) {
    return "لا يمكن أن تكون  أكبر من $max";
  }
}
