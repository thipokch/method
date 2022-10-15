import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/session_edit/widget.dart';

import '../../route/sheet.dart';

class SessionEditRoute extends GoRouteData {
  final String id;

  const SessionEditRoute(this.id);

  @override
  Page<void> buildPageWithState(context, state) => Sheet(
        child: SessionEdit.openSession(id: id),
        duration: const Duration(milliseconds: 500),
      );
}
