import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/logic/app_bloc.dart';

typedef SettingsAppearanceBloc = AppBloc;
typedef SettingsAppearanceEvent = AppEvent;
typedef SettingsAppearanceState = AppState;

typedef SettingsAppearanceBuilder
    = BlocBuilder<SettingsAppearanceBloc, SettingsAppearanceState>;
typedef SettingsAppearanceListener
    = BlocListener<SettingsAppearanceBloc, SettingsAppearanceState>;
typedef SettingsAppearanceSelector<T>
    = BlocSelector<SettingsAppearanceBloc, SettingsAppearanceState, T>;
typedef SettingsAppearanceConsumer
    = BlocConsumer<SettingsAppearanceBloc, SettingsAppearanceState>;

// TODO: Decouple SettingsAppearanceBloc from AppBloc
