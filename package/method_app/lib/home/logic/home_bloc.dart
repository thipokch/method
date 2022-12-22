import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/app/route/route.dart';
import 'package:method_app/util/bloc_navigator.dart';

typedef HomeState = int;

typedef HomeBuilder = BlocBuilder<HomeBloc, HomeState>;
typedef HomeListener = BlocListener<HomeBloc, HomeState>;
typedef HomeSelector<T> = BlocSelector<HomeBloc, HomeState, T>;
typedef HomeConsumer = BlocConsumer<HomeBloc, HomeState>;

class HomeBloc extends Cubit<HomeState> with BlocNavigator {
  HomeBloc({
    required this.navigator,
  }) : super(0) {
    _handleGoRouter();
    router.routeInformationProvider.addListener(_handleGoRouter);
  }

  @override
  final GlobalKey<NavigatorState> navigator;

  // DEFAULTS

  static final destinations = [
    // $sessionFlow.path,
    // $exerciseFlow.path,
    $settingsFlow.path,
  ];

  // EVENTS

  void _handleGoRouter() {
    final String location = router.location;
    for (final d in destinations.asMap().entries) {
      if (location.startsWith(d.value)) emit(d.key);
    }
  }

  void selectIndex(int index) => router.go(destinations[index]);
  // void selectSessionTab() => router.go(destinations[0]);
  // void selectExerciseTab() => router.go(destinations[1]);
  // void selectSettingsTab() => router.go(destinations[2]);

  // BLOC EVENTS

  @override
  void onChange(Change<HomeState> change) {
    // TODO: implement analytics here
    log("$runtimeType - change");

    super.onChange(change);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    GoRouter.of(context).removeListener(_handleGoRouter);

    return super.close();
  }
}
