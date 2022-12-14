import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_app/app/logic/app_bloc.dart';
import 'package:method_app/route/route.dart';
import 'package:method_app/app/view/view.dart';
import 'package:method_monitoring_service/monitoring_service.dart';
import 'package:rudder_integration_firebase_flutter/rudder_integration_firebase_flutter.dart';
import 'package:rudder_sdk_flutter/RudderController.dart';
import 'package:rudder_sdk_flutter_platform_interface/platform.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:flutter_segment/flutter_segment.dart';

import 'config/dev/rudder.dart';
import 'config/dev/sentry.dart';
import 'config/dev/firebase.dart';
// import 'config/dev/segment.dart';

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

      // AnalyticService.initialize(
      //   // "EDABVhLyZJr91dDOGkJ1E0syk2dLKkHP",
      //   DefaultRudderOptions.writeKey,
      //   config: AnalyticConfigBuilder()
      //       // .withDataPlaneUrl("https://api.segment.io")
      //       .withDataPlaneUrl(DefaultRudderOptions.dataPlaneUrl)
      //       .withFactory(AnalyticFirebaseIntegration())
      //       // .withWebConfig(WebConfig(loadIntegration: true))
      //       .withDebug(true)
      //       .build(),
      //   // options: RudderOption()
      //   //     .putExternalId("ga4AppInstanceId", ga4AppInstanceId ?? ""),
      // );

      // await FirebaseDynamicLinks.instance.getInitialLink().then((value) {
      //   print(value);
      //   if (value != null) {
      //     AppRouter.defaultRouter.goNamed(
      //       value.link.path,
      //       extra: value.link.queryParameters,
      //     );
      //   }
      // });

      runApp(
        BlocProvider(
          create: (_) => AppBloc(
            // debugMode: kDebugMode,
            routerConfig: AppRouter.defaultRouter,
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
