import 'dart:developer';

// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_app_check/firebase_app_check.dart';
// import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
// import 'package:firebase_performance/firebase_performance.dart';
// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/app/app.dart';
import 'package:method_app/settings_appearance/logic/settings_appearance_bloc.dart';
import 'package:method_style/method_style.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

typedef AppBuilder = BlocBuilder<AppBloc, AppState>;
typedef AppListener = BlocListener<AppBloc, AppState>;
typedef AppSelector<T> = BlocSelector<AppBloc, AppState, T>;
typedef AppConsumer = BlocConsumer<AppBloc, AppState>;

/*
 *
 *     [INITIAL]
 *         ↓
 *     [STARTED]
 */

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    this.debugMode = kDebugMode,
    // this.remoteConfig,
    required this.routerConfig,
    this.services,
    required this.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SetThemeMode>(_onSetThemeMode);
    add(const _Start());
  }

  final bool debugMode;

  late final List<SingleChildStatelessWidget>? services;

  // final RemoteConfigSettings? remoteConfig;
  final GoRouter routerConfig;

  final AnalyticService analytics;

  // DEFAULTS

  Future<List<SingleChildStatelessWidget>> defaultServices() async => [
        Provider<LicenseRepository>(
          create: (_) => LicenseRepository(),
        ),
        // Provider<FirebaseAnalytics>(
        //   create: (_) => FirebaseAnalytics.instance,
        // ),
        // Provider<FirebaseAnalyticsObserver>(
        //   create: (_) => AppRoute.defaultObserver,
        // ),
        // Provider<FirebaseAppCheck>(
        //   create: (_) => FirebaseAppCheck.instance,
        // ),
        // Provider<FirebaseInAppMessaging>(
        //   create: (_) => FirebaseInAppMessaging.instance,
        // ),
        // ListenableProvider<FirebaseRemoteConfig>(
        //   create: (_) {
        //     if (remoteConfig != null) {
        //       FirebaseRemoteConfig.instance.setConfigSettings(remoteConfig!);
        //     }

        //     return FirebaseRemoteConfig.instance;
        //   },
        // ),
        // Provider<FirebasePerformance>(
        //   create: (_) => FirebasePerformance.instance,
        // ),
        FutureProvider<PackageInfo?>(
          create: (_) => PackageInfo.fromPlatform(),
          initialData: null,
        ),
        Provider<GlobalKey<NavigatorState>>.value(
          value: AppRoute.defaultNavigator,
        ),
        // Provider<Repository>.value(
        //   value: await Repository.open(),
        // ),
        if (!kIsWeb)
          Provider<RisoShader>.value(
            value: await RisoShader.load(),
          ),
        Provider(
          create: (context) => ChromeSafariBrowser(),
        ),
        // Provider(
        //   create: (_) => RudderController.instance,
        // ),
      ];

  void handleSettingsAppearance(
    BuildContext context,
    SettingsAppearanceState state,
  ) =>
      state.mapOrNull();

  // EVENT HANDLERS

  void _onStart(_Start event, Emitter<AppState> emit) => state.maybeMap(
        initial: (_) async => emit(
          _Started(
            router: routerConfig,
            serviceProviders: services ?? await defaultServices(),
            themeMode: ThemeMode.system,
          ),
        ),
        orElse: () => throw StateError(
          "${event.runtimeType} is not allowed for ${state.runtimeType}.",
        ),
      );

  void _onSetThemeMode(_SetThemeMode event, Emitter<AppState> emit) =>
      state.maybeMap(
        started: (_) async => emit(_.copyWith(themeMode: event.themeMode)),
        orElse: () => throw StateError(
          "${event.runtimeType} is not allowed for ${state.runtimeType}.",
        ),
      );

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - event : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }
}
