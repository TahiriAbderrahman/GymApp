//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <desktop_webview_auth/desktop_webview_auth_plugin.h>
#include <simple_animation_progress_bar/simple_animation_progress_bar_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) desktop_webview_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DesktopWebviewAuthPlugin");
  desktop_webview_auth_plugin_register_with_registrar(desktop_webview_auth_registrar);
  g_autoptr(FlPluginRegistrar) simple_animation_progress_bar_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SimpleAnimationProgressBarPlugin");
  simple_animation_progress_bar_plugin_register_with_registrar(simple_animation_progress_bar_registrar);
}
