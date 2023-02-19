#include "include/windows_apps_infos/windows_apps_infos_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "windows_apps_infos_plugin.h"

void WindowsAppsInfosPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  windows_apps_infos::WindowsAppsInfosPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
