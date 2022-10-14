import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/util/repo_builder.dart';
import 'package:method/view/entry_editor/entry_editor.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/float/float_scaffold.dart';

class SessionEditView extends StatelessWidget {
  const SessionEditView({
    super.key,
  });

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      SessionBloc.provide(
        exercise: exercise,
        onCreate: (bloc) =>
            bloc.add(SessionEvent.loadSession(session: session)),
        child: const SessionEditView(),
      );

  static Widget open({
    required String id,
  }) =>
      RepoBuilder<Session>(
        futureBuilder: (_) => _.read<Repository>().sessions.get(id),
        onDone: (Session data) => create(
          exercise: data.template,
          session: data,
        ),
        // onDone:  SessionEditor(),
      );
  // FutureBuilder<Session?>(future: context.read<Repository>().exercises.get(id) ,builder: (context, snapshot) => ,);

  @override
  Widget build(BuildContext context) => BlocBuilder<SessionBloc, SessionState>(
        builder: (context, state) => state.maybeWhen(
          sessionLoaded: (exercise, session) => Swiper(
            loop: false,
            indicatorLayout: PageIndicatorLayout.WARM,
            itemCount: state.exercise.definitions.length,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            pagination: SwiperPagination(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(ElementScale.spaceNone),
              builder: _SessionEditorPagination(),
            ),
            itemBuilder: (_, index) => EntryEditor.create(
              listener: context.read<SessionBloc>().handleEntryBlocState,
              task: state.exercise.definitions[index],
              entry: index < session.definitions.length
                  ? session.definitions[index]
                  : null,
            ),
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _SessionEditorPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    final colorScheme = Theme.of(context).colorScheme;

    return FloatScaffold(
      leading: AspectRatio(
        aspectRatio: 1,
        child: config.activeIndex == 0
            ? IconButton(
                icon: const Icon(ElementSymbol.dismiss),
                color: colorScheme.primary,
                // ignore: no-empty-block
                onPressed: () {},
                // onPressed: () => focusNavigator.currentState?.pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronBack),
                color: colorScheme.primary,
                onPressed: () => config.controller.previous(),
              ),
      ),
      middle: DotSwiperPaginationBuilder(
        activeColor: colorScheme.primary,
        color: colorScheme.surfaceVariant,
        size: ElementScale.size03 + .0,
        space: ElementScale.size03 + .0,
        activeSize: ElementScale.size03 + .0,
      ).build(context, config),
      trailing: AspectRatio(
        aspectRatio: 1,
        child: config.activeIndex == config.itemCount - 1
            ? IconButton(
                icon: const Icon(ElementSymbol.checkmark),
                color: colorScheme.primary,
                onPressed: () => Navigator.of(context).pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronForward),
                color: colorScheme.primary,
                onPressed: () => config.controller.next(),
              ),
      ),
    );
  }
}
