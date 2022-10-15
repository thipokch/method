import 'package:flutter/cupertino.dart';
import 'package:method/components/session_edit/view.dart';
import 'package:method/util/future/future_provider.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';

class SessionEdit {
  const SessionEdit._();

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      SessionBloc.provider(
        exercise: exercise,
        session: session,
        child: view,
      );

  static Widget openSession({
    required String id,
  }) =>
      FutureProvider.session(
        id: id,
        onData: view,
        onWait: const CupertinoActivityIndicator(),
        onError: (_) => const CupertinoActivityIndicator(),
      );

  static Widget openExercise({
    required String id,
  }) =>
      FutureProvider.exercise(
        id: id,
        onData: view,
        onWait: const CupertinoActivityIndicator(),
        onError: (_) => const CupertinoActivityIndicator(),
      );

  static final Widget view = SessionBloc.builder(
    builder: (context, state) => state.map(
      exerciseLoaded: (_) => const CupertinoActivityIndicator(),
      sessionLoaded: (_) => SessionEditView(session: _.session),
    ),
  );
}
