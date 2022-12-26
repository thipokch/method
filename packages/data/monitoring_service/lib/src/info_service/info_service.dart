import 'dart:async';

import 'package:method_monitoring_service/monitoring_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// {@template info_service}
/// [InfoService] description
/// {@endtemplate}
class InfoService {
  /// {@macro info_service}
  const InfoService();

  // Delegate

  static PackageInfo? _package;
  static AnalyticService? _analytic;

  /// Load app information from the platform.
  Future<void> load() async {
    _package = await PackageInfo.fromPlatform();
    _analytic = AnalyticService(rudder: RudderController.instance);
  }

  // PackageInfo

  /// The app name. `CFBundleDisplayName` on iOS, `application/label` on Android.
  String get appName => _package!.appName;

  /// The package name. `bundleIdentifier` on iOS, `getPackageName` on Android.
  String get packageName => _package!.packageName;

  /// The package version. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  String get version => _package!.version;

  /// The build number. `CFBundleVersion` on iOS, `versionCode` on Android.
  String get buildNumber => _package!.buildNumber;

  /// The build signature. Empty string on iOS, signing key signature (hex) on Android.
  String get buildSignature => _package!.buildSignature;

  /// The installer store. Indicates through which store this application was installed.
  String? get installerStore => _package!.installerStore;

  // RudderContent

  String? get analyticId => _analytic!.context?.anonymousId;
  
}
