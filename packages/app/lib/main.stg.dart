import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_app/app/logic/app_bloc.dart';
import 'package:method_app/app/route/route.dart';
import 'package:method_app/app/view/view.dart';
import 'package:method_data/method_data.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:rudder_integration_firebase_flutter/rudder_integration_firebase_flutter.dart';
import 'package:rudder_sdk_flutter/RudderController.dart';
import 'package:rudder_sdk_flutter_platform_interface/platform.dart';
// import 'package:flutter_segment/flutter_segment.dart';

import 'config/stg/rudder.dart';
import 'config/stg/sentry.dart';
import 'config/stg/firebase.dart';
// import 'config/stg/segment.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Sentry.init(
        (options) {
          options.dsn = DefaultSentryOptions.dsn;

          // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
          // We recommend adjusting this value in production.
          options.tracesSampleRate = 1.0;
        },
      );

      // Pass all uncaught errors from the framework to Crashlytics.
      // https://firebase.google.com/docs/crashlytics/customize-crash-reports?platform=flutter
      // FlutterError.onError =
      //     FirebaseCrashlytics.instance.recordFlutterFatalError;

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // Segment.config(
      //   options: SegmentConfig(
      //     writeKey: DefaultSegmentOptions.writeKey,
      //     trackApplicationLifecycleEvents: true,
      //     amplitudeIntegrationEnabled: false,
      //     debug: false,
      //   ),
      // );

      runApp(
        BlocProvider(
          create: (_) => AppBloc(
            // debugMode: kDebugMode,
            routerConfig: AppRoute.defaultRouter,
            // remoteConfig: RemoteConfigSettings(
            //   fetchTimeout: const Duration(minutes: 1),
            //   minimumFetchInterval: const Duration(minutes: 5),
            // ),
            analytics: AnalyticService(
              rudder: RudderController.instance
                ..initialize(
                  // "EDABVhLyZJr91dDOGkJ1E0syk2dLKkHP",
                  DefaultRudderOptions.writeKey,
                  config: RudderConfigBuilder()
                      // .withDataPlaneUrl("https://api.segment.io")
                      .withDataPlaneUrl(DefaultRudderOptions.dataPlaneUrl)
                      .withFactory(RudderIntegrationFirebaseFlutter())
                      // .withWebConfig(WebConfig(loadIntegration: true))
                      .withDebug(true)
                      .build(),
                  // options: RudderOption()
                  //     .putExternalId("ga4AppInstanceId", ga4AppInstanceId ?? ""),
                ),
            ),
          ),
          child: const AppView(),
        ),
      );
    },
    // (error, stack) =>
    //     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
    (error, stack) async =>
        await Sentry.captureException(error, stackTrace: stack),
  );
}
