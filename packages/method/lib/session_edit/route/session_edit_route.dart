import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../session_edit.dart';

class SessionEditRoute extends GoRouteData {
  const SessionEditRoute(this.id, {this.initialIndex});

  final String id;
  final int? initialIndex;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionEditBloc(repository: context.read())
          ..add(SessionEditEvent.startSession(
            sessionId: id,
            initialIndex: initialIndex,
          )),
        child: const SessionEditPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context));
}
