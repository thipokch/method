import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../settings_data.dart';

class SettingsDataRoute extends GoRouteData {
  const SettingsDataRoute();

  static String name = "SettingsData";

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsDataBloc(
          navigator: context.read(),
          // repository: context.read(),
        ),
        child: const SettingsDataPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context), name: name);
}
