// ignore_for_file: unused_local_variable, unused_import

import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_repo/repository.dart';
import 'package:provider/provider.dart';

import 'config/firebase.dev.dart';

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

      final String fid = await FirebaseInstallations.instance.getId();

      runApp(
        App.launch(
          serviceProviders: [
            () async => RepositoryProvider.value(
                  value: await Repository.open(),
                ),
            () async => RepositoryProvider.value(
                  value: FirebaseAnalytics.instance,
                ),
            () async => ListenableProvider.value(
                  value: FirebaseRemoteConfig.instance
                    ..setConfigSettings(RemoteConfigSettings(
                      fetchTimeout: const Duration(minutes: 1),
                      minimumFetchInterval: const Duration(minutes: 5),
                    )),
                ),
          ],
        ),
      );
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
