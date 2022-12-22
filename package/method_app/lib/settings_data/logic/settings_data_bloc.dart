import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:method_app/flow/flow.dart';
import 'package:method_app/util/bloc_navigator.dart';
import 'package:method_data/method_data.dart';

typedef SettingsDataState = void;

typedef SettingsDataBuilder = BlocBuilder<SettingsDataBloc, SettingsDataState>;
typedef SettingsDataListener
    = BlocListener<SettingsDataBloc, SettingsDataState>;
typedef SettingsDataSelector<T>
    = BlocSelector<SettingsDataBloc, SettingsDataState, T>;
typedef SettingsDataConsumer
    = BlocConsumer<SettingsDataBloc, SettingsDataState>;

/*
 *
 *     [INITIAL] ──┐
 *                 ↓
 *         ┌── [CREATED] ──┐
 *         ↓       ↑       ↓
 *    [DESTROYED]  └── [STARTED] ──┐
 *                         ↑       ↓
 *                         └── [RESUMED]
 * 
 */

class SettingsDataBloc extends Cubit<SettingsDataState> with BlocNavigator {
  SettingsDataBloc({
    required this.navigator,
    // required this.repository,
  }) : super(null);

  @override
  final GlobalKey<NavigatorState> navigator;

  // final Repository repository;

  void eraseData() => FlutterPlatformAlert.showCustomAlert(
        windowTitle: "Erase Your Data",
        text:
            "Erasing will restore this app to initial state. This action cannot be undone.",
        positiveButtonTitle: "Not Now",
        negativeButtonTitle: "Erase",
      ).then((selection) {
        if (selection == CustomButton.negativeButton) {
          // repository.reset().then((value) => const ExerciseFlow().go(context));
        }
      });

  // BLOC EVENTS

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }
}
