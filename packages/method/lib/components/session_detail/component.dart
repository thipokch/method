import 'package:flutter/cupertino.dart';
import 'package:method/components/session_detail/page.dart';
import 'package:method/components/session_detail/view.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';

class SessionDetail {
  const SessionDetail._();

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      SessionBloc.provider(
        exercise: exercise,
        session: session,
        child: view,
      );

  static final Widget view = SessionBloc.builder(
    builder: (context, state) => state.map(
      exerciseLoaded: (_) => const CupertinoActivityIndicator(),
      sessionLoaded: (_) => SessionDetailView(session: _.session),
    ),
  );

  static final Widget page = SessionBloc.builder(
    builder: (context, state) => state.map(
      exerciseLoaded: (_) => const CupertinoActivityIndicator(),
      sessionLoaded: (_) => SessionDetailPage(session: _.session),
    ),
  );
}
