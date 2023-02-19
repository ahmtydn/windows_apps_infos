## Windows Apps Info

This package provides a Flutter library for working with Windows device apps. It includes functionality for retrieving information about installed apps, as well as specific information about individual apps.


## ⚠️ for Windows users

This package provides functionality specifically for working with Windows device apps and is only intended to be used on Windows. It may not work as expected on other operating systems.
## Features

* Get the version number of a specific app
* Get various pieces of information about a specific app, including its name, company name, file version, and product name and version
* Get information about all installed apps

## Getting started

To use this package, add it to your dependencies in your ` pubspec.yaml` file:
```
dependencies:
  windows_apps_infos: ^0.0.2
```

Then import it in your Dart code:

```
import 'package:windows_apps_infos/windows_apps_infos.dart';
```

## Usage

Get App Version

```
String version = await DeviceApps.getAppVersion(path: 'path/to/app.exe');
print('App version: $version');
```
Get App Information

```
final info = await DeviceApps.getAppAllInfo(path: 'path/to/app.exe');
print('App name: ${info.name}');
print('Company name: ${info.companyName}');
print('File version: ${info.fileVersion}');
print('Product name: ${info.productName}');
print('Product version: ${info.productVersion}');
```

Get Information about All Installed Apps

```
List<AppInfo> appList = await DeviceApps.getAllInstalledAppsInfo();
for (AppInfo info in appList) {
  print('App name: ${info.name}');
  print('Company name: ${info.companyName}');
  print('File version: ${info.fileVersion}');
  print('Product name: ${info.productName}');
  print('Product version: ${info.productVersion}');
}
```

## Additional information

For more information, refer to the documentation in the ` windows_apps_infos.dart` file. Contributions, bug reports, and feature requests are welcome on the [GitHub repository](https://github.com/ahmtydn/windows_apps_info).

# Contact

You can reach me at [Ahmet Aydın](https://ahmetaydin.dev/).

