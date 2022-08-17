// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:matter/preview.dart';

import 'config/firebase.dev.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Pass all uncaught errors from the framework to Crashlytics.
    // https://firebase.google.com/docs/crashlytics/customize-crash-reports?platform=flutter
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    String fid = await FirebaseInstallations.instance.getId();

    await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 5),
    ));

    runApp(const MatterPreview());
  },
      (error, stack) =>
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true));
}