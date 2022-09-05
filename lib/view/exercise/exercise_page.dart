import 'package:component/exercise/exercise_bloc.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:element/element_touch.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:method/view/exercise/exercise_editor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../task/task_component.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  State<StatefulWidget> createState() => ExercisePageState();
}

class ExercisePageState extends State<ExercisePage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ignore: no-empty-blo

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ExerciseBloc, ExerciseState>(builder: (context, state) {
        final colorScheme = Theme.of(context).colorScheme;
        final textTheme = Theme.of(context).textTheme;
        final exercise = context.read<ExerciseBloc>().state.exercise;

        return DecoratedBox(
          decoration: BoxDecoration(color: colorScheme.surface),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(ElementSymbol.chevronBack),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                pinned: true,
                expandedHeight: 300,
                stretch: true,
                onStretchTrigger: () async {
                  ElementTouch.select();
                },
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1.0,
                  title: Builder(
                    builder: (context) {
                      final FlexibleSpaceBarSettings settings =
                          context.dependOnInheritedWidgetOfExactType<
                              FlexibleSpaceBarSettings>()!;

                      final double deltaExtent =
                          settings.maxExtent - settings.minExtent;

                      final double t = clampDouble(
                        1.0 -
                            (settings.currentExtent - settings.minExtent) /
                                deltaExtent,
                        0.0,
                        1.0,
                      );

                      _controller.value = t;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DefaultTextStyleTransition(
                            style: TextStyleTween(
                              begin: textTheme.headlineSmall,
                              end: textTheme.titleMedium,
                            ).animate(_controller),
                            child: Text(exercise.name),
                          ),
                          Opacity(
                            opacity: 1 - ElementMotion.easeOutExpo.transform(t),
                            child: ClipRect(
                              child: Align(
                                alignment: Alignment.topCenter,
                                heightFactor: 1 - t,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(ElementScale.spaceS),
                                  child: Column(
                                    children: [
                                      Text(
                                        exercise.description,
                                        style: textTheme.bodySmall,
                                      ),
                                      ButtonTonal(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            ModalBottomSheetRoute(
                                              expanded: true,
                                              builder: (childContext) =>
                                                  BlocProvider.value(
                                                value: context
                                                    .read<ExerciseBloc>(),
                                                child: const ExerciseEditor(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: const Text("Start"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  background: DecoratedBox(
                    decoration:
                        BoxDecoration(color: colorScheme.surfaceVariant),
                  ),
                  // background: ,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(ElementScale.spaceM),
                  child: Column(
                    children: <Widget>[
                      ...context
                          .read<ExerciseBloc>()
                          .state
                          .exercise
                          .definitions
                          .map((task) => TaskComponent(task: task)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

        // return MethodPage(
        //   title: context.read<ExerciseBloc>().state.exercise.name,
        //   child: Column(
        //     children: <Widget>[
        //       ButtonTonal(
        //         child: const Text("Start"),
        //         onPressed: () {
        //           Navigator.of(context).push(
        //             MaterialPageRoute(
        //               builder: (childContext) => BlocProvider.value(
        //                 value: context.read<ExerciseBloc>(),
        //                 child: const ExerciseEditor(),
        //               ),
        //             ),
        //           );
        //         },
        //       ),
        //       ...context
        //           .read<ExerciseBloc>()
        //           .state
        //           .exercise
        //           .definitions
        //           .map((task) => TaskComponent(task: task)),
        //     ],
        //   ),
        // );
      });
}
