import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/app.dart';
import 'package:method/settings_appearance/route/route.dart';
import 'package:method/settings_privacy/settings_privacy.dart';

typedef SettingsListState = void;

typedef SettingsListBuilder = BlocBuilder<SettingsListBloc, SettingsListState>;
typedef SettingsListListener
    = BlocListener<SettingsListBloc, SettingsListState>;
typedef SettingsListSelector<T>
    = BlocSelector<SettingsListBloc, SettingsListState, T>;
typedef SettingsListConsumer
    = BlocConsumer<SettingsListBloc, SettingsListState>;

class SettingsListBloc extends Cubit<SettingsListState> {
  SettingsListBloc({required this.navigator}) : super(null);

  final GlobalKey<NavigatorState> navigator;

  void goPrivacy() =>
      const SettingsPrivacyRoute().push(navigator.currentContext!);
  void goAppearance() =>
      const SettingsAppearanceRoute().push(navigator.currentContext!);
  // void goAcknowledgements() =>
  //     AcknowledgementListRoute().push(navigator.currentContext!);
}
