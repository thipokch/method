import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/page/page.dart';
import 'package:provider/provider.dart';

import '../loading/view.dart';

part 'page.dart';
part 'view.dart';

class Appearance {
  Appearance._();

  static final view = AppBloc.builder(
    builder: (context, state) => state.when(
      initial: () => const CupertinoActivityIndicator(),
      loaded: (themeMode, serviceProviders) => _View(themeMode: themeMode),
    ),
  );

  static final page = AppBloc.builder(
    builder: (context, state) => state.when(
      initial: () => const LoadingSliver(),
      loaded: (themeMode, serviceProviders) => _Page(themeMode: themeMode),
    ),
  );
}
