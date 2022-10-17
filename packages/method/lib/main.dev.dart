import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:method/app.dart';
import 'package:method/components/home/route.dart';
import 'package:method_repo/repository.dart';
import 'package:provider/provider.dart';

import 'config/firebase.dev.dart';
import 'route/routes.dart';

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

      // ignore: unused_local_variable
      final String fid = await FirebaseInstallations.instance.getId();

      runApp(
        App(
          routerConfig: GoRouter(
            observers: [
              FirebaseAnalyticsObserver(
                analytics: FirebaseAnalytics.instance,
                nameExtractor: (settings) =>
                    GoRouter.of(rootNavigator.currentContext!).location,
              ),
            ],
            // debugLogDiagnostics: true,
            navigatorKey: rootNavigator,
            initialLocation: const SessionFlow().location,
            routes: [
              homeRoutes,
            ],
          ),
          serviceProviders: [
            () async => Provider.value(
                  value: await Repository.open(),
                ),
            () async => Provider.value(
                  value: FirebaseAnalytics.instance,
                ),
            () async => ListenableProvider.value(
                  value: FirebaseRemoteConfig.instance
                    ..setConfigSettings(RemoteConfigSettings(
                      fetchTimeout: const Duration(minutes: 1),
                      minimumFetchInterval: const Duration(minutes: 5),
                    )),
                  updateShouldNotify: (previous, current) => false,
                ),
          ],
        ),
      );
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
