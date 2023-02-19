#ifndef FLUTTER_PLUGIN_WINDOWS_APPS_INFOS_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOWS_APPS_INFOS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace windows_apps_infos {

class WindowsAppsInfosPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WindowsAppsInfosPlugin();

  virtual ~WindowsAppsInfosPlugin();

  // Disallow copy and assign.
  WindowsAppsInfosPlugin(const WindowsAppsInfosPlugin&) = delete;
  WindowsAppsInfosPlugin& operator=(const WindowsAppsInfosPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace windows_apps_infos

#endif  // FLUTTER_PLUGIN_WINDOWS_APPS_INFOS_PLUGIN_H_
