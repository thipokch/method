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

part 'pagination.dart';

class SessionEditor extends StatelessWidget {
  const SessionEditor({
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
        child: const SessionEditor(),
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

//   @override
// void initState() {
//   super.initState();
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
// }

// @override
// void dispose() {
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//   super.dispose();
// }

// static Route route({
//   required Exercise exercise,
//   Session? session,
//   // ThemeData? theme,
// }) =>
//     ModalBottomSheetRoute(
//       expanded: true,
//       builder: (context) => _Session(
//         exercise: exercise,
//         session: session,
//         // theme: theme,
//         child: const SessionEditor(),
//       ),
//     );
