import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/session_detail/component.dart';

import '../../util/future/future_provider.dart';

class SessionDetailRoute extends GoRouteData {
  final String id;

  const SessionDetailRoute(this.id);

  @override
  Widget build(BuildContext context) => FutureSwitcher.provideSession(
        id: id,
        onData: SessionDetail.page,
        onWait: const CupertinoActivityIndicator(),
        onError: (_) => const CupertinoActivityIndicator(),
      );
}
