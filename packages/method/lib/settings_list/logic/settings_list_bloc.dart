import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/app.dart';
import 'package:method/license_list/license_list.dart';
import 'package:method/privacy/route/route.dart';
import 'package:method/settings_appearance/route/route.dart';
import 'package:method/settings_data/route/settings_data_route.dart';
import 'package:method/terms/route/route.dart';
import 'package:method/util/bloc_navigator.dart';

typedef SettingsListState = void;

typedef SettingsListBuilder = BlocBuilder<SettingsListBloc, SettingsListState>;
typedef SettingsListListener
    = BlocListener<SettingsListBloc, SettingsListState>;
typedef SettingsListSelector<T>
    = BlocSelector<SettingsListBloc, SettingsListState, T>;
typedef SettingsListConsumer
    = BlocConsumer<SettingsListBloc, SettingsListState>;

class SettingsListBloc extends Cubit<SettingsListState> with BlocNavigator {
  SettingsListBloc({required this.navigator}) : super(null);

  @override
  final GlobalKey<NavigatorState> navigator;

  void goData() => const SettingsDataRoute().push(context);
  void goAppearance() => const SettingsAppearanceRoute().push(context);
  void goLicense() => const LicenseListRoute().push(context);
  void goPrivacy() => const PrivacyRoute().push(context);
  void goTerms() => const TermsRoute().push(context);
}
