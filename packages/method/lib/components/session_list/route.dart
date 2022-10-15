import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/session_list/widget.dart';
import 'package:method_bloc/session_list/session_list_bloc.dart';

class SessionListRoute extends GoRouteData {
  const SessionListRoute();

  @override
  Widget build(BuildContext context) =>
      SessionListBloc.provider(child: SessionList.page);
}
