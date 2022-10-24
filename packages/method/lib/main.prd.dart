import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/logic/app_bloc.dart';
import 'app/route/app_route.dart';
import 'app/view/app_view.dart';
import 'config/firebase.prd.dart';

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

      runApp(
        BlocProvider(
          create: (_) => AppBloc(
            routerConfig: AppRoute.defaultRouter,
            remoteConfig: RemoteConfigSettings(
              fetchTimeout: const Duration(minutes: 1),
              minimumFetchInterval: const Duration(minutes: 5),
            ),
          ),
          child: const AppView(),
        ),
      );
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
