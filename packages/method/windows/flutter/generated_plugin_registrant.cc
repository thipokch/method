//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dynamic_color/dynamic_color_plugin_c_api.h>
#include <flutter_platform_alert/flutter_platform_alert_plugin.h>
#include <isar_flutter_libs/isar_flutter_libs_plugin.h>
#include <realm/realm_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DynamicColorPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DynamicColorPluginCApi"));
  FlutterPlatformAlertPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FlutterPlatformAlertPlugin"));
  IsarFlutterLibsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("IsarFlutterLibsPlugin"));
  RealmPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RealmPlugin"));
}
