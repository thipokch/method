import 'package:flutter/cupertino.dart';
import 'package:method/components/session_list/page.dart';
import 'package:method/components/session_list/view.dart';
import 'package:method_bloc/session_list/session_list_bloc.dart';

class SessionList {
  const SessionList._();

  static Widget create() => SessionListBloc.provider(child: view);

  static final Widget view = SessionListBloc.builder(
    builder: (context, state) => state.map(
      initial: (_) => const CupertinoActivityIndicator(),
      loaded: (_) => SessionListView(sessions: _.sessions),
    ),
  );
  static final Widget page = SessionListBloc.builder(
    builder: (context, state) => state.map(
      initial: (_) => const CupertinoActivityIndicator(),
      loaded: (_) => SessionListPage(sessions: _.sessions),
    ),
  );
}
