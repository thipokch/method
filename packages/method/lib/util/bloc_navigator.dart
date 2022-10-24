import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

mixin BlocNavigator<E, S> on Bloc<E, S> {
  GlobalKey<NavigatorState> get navigator;

  BuildContext get context => navigator.currentContext!;
  GoRouter get router => GoRouter.of(context);
}

mixin CubitNavigator<S> on Cubit<S> {
  GlobalKey<NavigatorState> get navigator;

  BuildContext get context => navigator.currentContext!;
  GoRouter get router => GoRouter.of(context);
}
