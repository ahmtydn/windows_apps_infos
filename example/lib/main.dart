import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:windows_apps_infos/windows_apps_infos.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _appVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    getAppVersion();
  }

  Future<void> getAppVersion() async {
    String appVersion;

    try {
      appVersion =
          await DeviceApps.getAppVersion(path: 'C:/Windows/System32/notepad.exe');
    } on PlatformException {
      appVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _appVersion = appVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Notepad Version: $_appVersion\n'),
        ),
      ),
    );
  }
}
