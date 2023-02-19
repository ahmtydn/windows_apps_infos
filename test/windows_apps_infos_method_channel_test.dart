import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:windows_apps_infos/windows_device_apps.dart';


void main() {
  DeviceApps platform = DeviceApps();
  const MethodChannel channel = MethodChannel('windows_apps_infos');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
