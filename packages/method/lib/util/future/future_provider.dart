import 'package:flutter/cupertino.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task.dart';
import 'package:method_repo/repository.dart';
import 'package:provider/provider.dart';

class FutureSwitcher<T extends Object> extends StatelessWidget {
  final Future<T?> Function(BuildContext _) futureBuilder;
  final Widget onWait;
  final Widget Function(T data) onData;
  final Widget Function(Object error) onError;

  const FutureSwitcher({
    super.key,
    required this.futureBuilder,
    required this.onWait,
    required this.onData,
    required this.onError,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<T?>(
        future: futureBuilder.call(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) return onData(snapshot.data!);
          if (snapshot.hasError) return onError(snapshot.error!);

          return onWait;
        },
      );

  static provideEntry({
    required String id,
    required Widget onData,
    required Widget onWait,
    required Widget Function(Object error) onError,
  }) =>
      FutureSwitcher(
        futureBuilder: (_) => _.read<Repository>().entries.get(id),
        onWait: onWait,
        onData: (Entry data) => EntryBloc.provider(
          task: data.template,
          entry: data,
          child: onData,
        ),
        onError: onError,
      );

  static provideTask({
    required String id,
    required Widget onData,
    required Widget onWait,
    required Widget Function(Object error) onError,
  }) =>
      FutureSwitcher(
        futureBuilder: (_) => _.read<Repository>().tasks.get(id),
        onWait: onWait,
        onData: (Task data) => EntryBloc.provider(
          task: data,
          entry: Entry.from(template: data),
          child: onData,
        ),
        onError: onError,
      );

  static provideSession({
    required String id,
    required Widget onData,
    required Widget onWait,
    required Widget Function(Object error) onError,
  }) =>
      FutureSwitcher(
        futureBuilder: (_) => _.read<Repository>().sessions.get(id),
        onWait: onWait,
        onData: (Session data) => SessionBloc.provider(
          exercise: data.template,
          session: data,
          child: onData,
        ),
        onError: onError,
      );

  static provideExercise({
    required String id,
    required Widget onData,
    required Widget onWait,
    required Widget Function(Object error) onError,
  }) =>
      FutureSwitcher(
        futureBuilder: (_) => _.read<Repository>().exercises.get(id),
        onWait: onWait,
        onData: (Exercise data) => SessionBloc.provider(
          exercise: data,
          session: Session.from(template: data),
          child: onData,
        ),
        onError: onError,
      );
}
