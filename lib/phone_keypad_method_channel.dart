import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'phone_keypad_platform_interface.dart';

/// An implementation of [PhoneKeypadPlatform] that uses method channels.
class MethodChannelPhoneKeypad extends PhoneKeypadPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('phone_keypad');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
