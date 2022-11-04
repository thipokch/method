import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/app/app.dart';
import 'package:method/license/service/license_service.dart';
import 'package:method/settings_appearance/logic/settings_appearance_bloc.dart';
import 'package:method_repo/repository.dart';
import 'package:method_ui/riso/riso_shader.dart';
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
    this.remoteConfig,
    required this.routerConfig,
    this.services,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SetThemeMode>(_onSetThemeMode);
    add(const _Start());
  }

  final bool debugMode;

  late final List<SingleChildStatelessWidget>? services;

  final RemoteConfigSettings? remoteConfig;
  final GoRouter routerConfig;

  // DEFAULTS

  Future<List<SingleChildStatelessWidget>> defaultServices() async => [
        Provider<LicenseService>(
          create: (_) => LicenseService(),
        ),
        Provider<FirebaseAnalytics>(
          create: (_) => FirebaseAnalytics.instance,
        ),
        Provider<FirebaseAnalyticsObserver>(
          create: (_) => AppRoute.defaultObserver,
        ),
        Provider<FirebaseAppCheck>(
          create: (_) => FirebaseAppCheck.instance,
        ),
        Provider<FirebaseInAppMessaging>(
          create: (_) => FirebaseInAppMessaging.instance,
        ),
        ListenableProvider<FirebaseRemoteConfig>(
          create: (_) {
            if (remoteConfig != null) {
              FirebaseRemoteConfig.instance.setConfigSettings(remoteConfig!);
            }

            return FirebaseRemoteConfig.instance;
          },
        ),
        Provider<FirebasePerformance>(
          create: (_) => FirebasePerformance.instance,
        ),
        FutureProvider<PackageInfo?>(
          create: (_) => PackageInfo.fromPlatform(),
          initialData: null,
        ),
        Provider<GlobalKey<NavigatorState>>.value(
          value: AppRoute.defaultNavigator,
        ),
        Provider<Repository>.value(
          value: await Repository.open(),
        ),
        Provider<RisoShader>.value(
          value: await RisoShader.load(),
        ),
        // FutureProvider<Repository?>(
        //   create: (_) => Repository.open(),
        //   initialData: null,
        //   lazy: false,
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
