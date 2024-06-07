//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <phone_keypad/phone_keypad_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) phone_keypad_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PhoneKeypadPlugin");
  phone_keypad_plugin_register_with_registrar(phone_keypad_registrar);
}
