#include "include/phone_keypad/phone_keypad_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "phone_keypad_plugin.h"

void PhoneKeypadPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  phone_keypad::PhoneKeypadPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
