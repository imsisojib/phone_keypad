
import 'phone_keypad_platform_interface.dart';

class PhoneKeypad {
  Future<String?> getPlatformVersion() {
    return PhoneKeypadPlatform.instance.getPlatformVersion();
  }
}
