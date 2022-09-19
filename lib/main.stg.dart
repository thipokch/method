// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app.dart';
import 'package:repository/repository.dart';

import 'config/firebase.stg.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // Pass all uncaught errors from the framework to Crashlytics.
      // https://firebase.google.com/docs/crashlytics/customize-crash-reports?platform=flutter
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;

      final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
      final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
      final String fid = await FirebaseInstallations.instance.getId();

      await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ));

      final repo = await Repository.load();

      runApp(MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: repo),
          RepositoryProvider.value(value: analytics),
          // RepositoryProvider.value(value: remoteConfig),
          // RepositoryProvider.value(value: fid),
        ],
        child: const App(),
      ));
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
