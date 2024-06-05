import 'package:flutter_test/flutter_test.dart';
import 'package:phone_keypad/phone_keypad.dart';
import 'package:phone_keypad/phone_keypad_platform_interface.dart';
import 'package:phone_keypad/phone_keypad_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPhoneKeypadPlatform
    with MockPlatformInterfaceMixin
    implements PhoneKeypadPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PhoneKeypadPlatform initialPlatform = PhoneKeypadPlatform.instance;

  test('$MethodChannelPhoneKeypad is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPhoneKeypad>());
  });

  test('getPlatformVersion', () async {
    PhoneKeypad phoneKeypadPlugin = PhoneKeypad();
    MockPhoneKeypadPlatform fakePlatform = MockPhoneKeypadPlatform();
    PhoneKeypadPlatform.instance = fakePlatform;

    expect(await phoneKeypadPlugin.getPlatformVersion(), '42');
  });
}
