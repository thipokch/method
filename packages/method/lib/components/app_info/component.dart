import 'package:flutter/cupertino.dart';
import 'package:method/util/future/future_provider.dart';
import 'package:method_style/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'view.dart';

class AppInfo {
  AppInfo._();

  static final view = FutureSwitcher(
    futureBuilder: (_) => PackageInfo.fromPlatform(),
    onWait: const CupertinoActivityIndicator(),
    onError: (_) => const CupertinoActivityIndicator(),
    onData: (data) => _View(
      name: data.appName.toLowerCase(),
      version: data.version,
      buildInfo: data.buildNumber,
    ),
  );
}
