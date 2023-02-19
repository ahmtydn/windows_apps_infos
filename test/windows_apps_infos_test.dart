import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:windows_apps_infos/windows_device_apps.dart';

class MockWindowsAppsInfosPlatform
    with MockPlatformInterfaceMixin
    implements DeviceApps {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {

}
