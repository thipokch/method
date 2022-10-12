import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:method/app.dart';
import 'package:method_repo/repository.dart';
import 'package:provider/provider.dart';

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

      runApp(App.launch(
        providers: [
          Provider.value(
            value: await Repository.open(),
          ),

          // FirebaseAnalytics

          Provider.value(
            value: FirebaseAnalytics.instance,
          ),

          // FirebaseRemoteConfig

          ChangeNotifierProvider<FirebaseRemoteConfig>.value(
            value: FirebaseRemoteConfig.instance
              ..setConfigSettings(RemoteConfigSettings(
                fetchTimeout: const Duration(minutes: 1),
                minimumFetchInterval: const Duration(minutes: 5),
              )),
          ),
        ],
      ));
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
