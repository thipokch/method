// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:flutter_segment/flutter_segment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_app/app/app.dart';
import 'package:method_app/license_list/license_list.dart';
import 'package:method_app/settings_appearance/route/route.dart';
import 'package:method_app/settings_data/route/settings_data_route.dart';
import 'package:method_app/util/bloc_navigator.dart';
import 'package:method_data/method_data.dart';

part 'settings_list_event.dart';
part 'settings_list_output.dart';
part 'settings_list_bloc.freezed.dart';

typedef SettingsListState = void;

typedef SettingsListBuilder = BlocBuilder<SettingsListBloc, SettingsListState>;
typedef SettingsListListener
    = BlocListener<SettingsListBloc, SettingsListState>;
typedef SettingsListSelector<T>
    = BlocSelector<SettingsListBloc, SettingsListState, T>;
typedef SettingsListConsumer
    = BlocConsumer<SettingsListBloc, SettingsListState>;

class SettingsListBloc extends Bloc<SettingsListEvent, SettingsListState>
    with BlocNavigator {
  SettingsListBloc({
    required this.navigator,
    required this.browser,
    this.analytics,
  }) : super(null) {
    on<_SelectData>(_onSelectData);
    on<_SelectAppearance>(_onSelectAppearance);
    on<_SelectLicense>(_onSelectLicense);
    on<_SelectFeedback>(_onSelectFeedback);
    on<_SelectPrivacy>(_onSelectPrivacy);
    on<_SelectTerms>(_onSelectTerms);
  }

  @override
  final GlobalKey<NavigatorState> navigator;
  final AnalyticRepository? analytics;

  final ChromeSafariBrowser browser;

  void _onSelectData(
    _SelectData event,
    Emitter<SettingsListState> emit,
  ) =>
      const SettingsDataRoute().push(context);

  void _onSelectAppearance(
    _SelectAppearance event,
    Emitter<SettingsListState> emit,
  ) =>
      const SettingsAppearanceRoute().push(context);

  void _onSelectLicense(
    _SelectLicense event,
    Emitter<SettingsListState> emit,
  ) =>
      const LicenseListRoute().push(context);

  void _onSelectFeedback(
    _SelectFeedback event,
    Emitter<SettingsListState> emit,
  ) async =>
      await browser.open(
        url: WebUri("https://coda.io/form/feedback_dMmrIJSqIuf?anonymousId=${analytics?.context?.anonymousId}"),
        settings: ChromeSafariBrowserSettings(
          shareState: CustomTabsShareState.SHARE_STATE_OFF,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
        ),
      );

  void _onSelectPrivacy(
    _SelectPrivacy event,
    Emitter<SettingsListState> emit,
  ) async =>
      await browser.open(
        url: WebUri("https://thipok.ch/privacy"),
        settings: ChromeSafariBrowserSettings(
          shareState: CustomTabsShareState.SHARE_STATE_OFF,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: true,
        ),
      );
  // void goTerms() => const TermsRoute().push(context);
  void _onSelectTerms(
    _SelectTerms event,
    Emitter<SettingsListState> emit,
  ) async =>
      await browser.open(
        url: WebUri("https://thipok.ch/terms"),
        settings: ChromeSafariBrowserSettings(
          shareState: CustomTabsShareState.SHARE_STATE_OFF,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: true,
        ),
      );

  @override
  void onEvent(SettingsListEvent event) {
    const browserClass = "ChromeSafariBrowser";

    event.mapOrNull(
      selectFeedback: (value) => analytics?.trackScreen("Feedback"),
      selectPrivacy: (value) => analytics?.trackScreen("Privacy"),
      selectTerms: (value) => analytics?.trackScreen("Terms"),
    );

    // TODO: implement onEvent
    super.onEvent(event);
  }
}