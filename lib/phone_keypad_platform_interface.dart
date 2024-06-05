import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'phone_keypad_method_channel.dart';

abstract class PhoneKeypadPlatform extends PlatformInterface {
  /// Constructs a PhoneKeypadPlatform.
  PhoneKeypadPlatform() : super(token: _token);

  static final Object _token = Object();

  static PhoneKeypadPlatform _instance = MethodChannelPhoneKeypad();

  /// The default instance of [PhoneKeypadPlatform] to use.
  ///
  /// Defaults to [MethodChannelPhoneKeypad].
  static PhoneKeypadPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PhoneKeypadPlatform] when
  /// they register themselves.
  static set instance(PhoneKeypadPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
