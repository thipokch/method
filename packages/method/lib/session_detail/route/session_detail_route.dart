import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../session_detail.dart';

class SessionDetailRoute extends GoRouteData {
  const SessionDetailRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionDetailBloc(
          id: id,
          repository: context.read(),
        ),
        child: const SessionDetailPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context));
}
