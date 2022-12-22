//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dynamic_color/dynamic_color_plugin_c_api.h>
#include <flutter_platform_alert/flutter_platform_alert_plugin.h>
#include <sentry_flutter/sentry_flutter_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DynamicColorPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DynamicColorPluginCApi"));
  FlutterPlatformAlertPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FlutterPlatformAlertPlugin"));
  SentryFlutterPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SentryFlutterPlugin"));
}
