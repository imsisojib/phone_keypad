#ifndef FLUTTER_PLUGIN_PHONE_KEYPAD_PLUGIN_H_
#define FLUTTER_PLUGIN_PHONE_KEYPAD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace phone_keypad {

class PhoneKeypadPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PhoneKeypadPlugin();

  virtual ~PhoneKeypadPlugin();

  // Disallow copy and assign.
  PhoneKeypadPlugin(const PhoneKeypadPlugin&) = delete;
  PhoneKeypadPlugin& operator=(const PhoneKeypadPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace phone_keypad

#endif  // FLUTTER_PLUGIN_PHONE_KEYPAD_PLUGIN_H_
