import 'package:card_swiper/card_swiper.dart';
import 'package:component/exercise/exercise_bloc.dart';
import 'package:component/task/task_bloc.dart';
import 'package:core/model/session.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/task/task_editor.dart';

class ExerciseEditor extends StatefulWidget {
  const ExerciseEditor({super.key});

  @override
  State<StatefulWidget> createState() => ExerciseEditorState();
}

class ExerciseEditorState extends State<ExerciseEditor> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            final bloc = context.read<ExerciseBloc>();
            final colorScheme = Theme.of(context).colorScheme;

            state.whenOrNull(
              exerciseLoaded: (exercise) => bloc.add(
                ExerciseEvent.loadSession(
                  session: Session.create(
                    template: state.exercise,
                    collectionSlug: "",
                    hierarchyPath: "",
                    id: "",
                  ),
                ),
              ),
            );

            return Swiper(
              plugins: [ExerciseSwiperPlugin()],
              loop: false,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(ElementScale.spaceM),
                builder: DotSwiperPaginationBuilder(
                  activeColor: colorScheme.primary,
                  color: colorScheme.onSurfaceVariant,
                  size: ElementScale.cornerMedium,
                  activeSize: ElementScale.cornerMedium,
                ),
              ),
              // pagination: DotSwiperPaginationBuilder(
              //   activeColor: colorScheme.primary,
              //   color: colorScheme.surface,

              // ),
              itemCount: state.exercise.definitions.length,
              itemBuilder: (context, index) => BlocProvider(
                create: (context) =>
                    TaskBloc(task: state.exercise.definitions[index]),
                child: const TaskEditor(),
              ),
            );

            // return BlocProvider(
            //   create: (context) => TaskBloc(
            //     task: context.read<ExerciseBloc>().state.exercise.definitions.first,
            //   ),
            //   child: const TaskEditor(),
            // );
          },
        ),
      );
}

class ExerciseSwiperPlugin extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) => Container(
        alignment: Alignment.topRight,
        height: MediaQuery.of(context).padding.top,
        padding: const EdgeInsets.all(16),
        child: IconButton(
          icon: const Icon(ElementSymbol.dismissCircleFilled),
          onPressed: () => Navigator.of(context).pop(),
          iconSize: 32.00,
        ),
      );
}
