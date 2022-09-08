// ignore_for_file: unused_import

import 'package:component/exercise/exercise_bloc.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_react.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:element/element_touch.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/airbrush/airbrush_image.dart';
import 'package:matter/airbrush/airbrush_painter.dart';
import 'package:matter/button/button_filled.dart';
import 'package:method/view/exercise/exercise_editor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../task/task_component.dart';

class ExercisePage extends StatefulWidget {
  final ImageShader? imageShader;

  const ExercisePage({
    super.key,
    this.imageShader,
  });

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
        final exercise = context.read<ExerciseBloc>().state.exercise;

        final colorScheme = Theme.of(context).colorScheme;
        final textTheme = Theme.of(context).textTheme;

        return Hero(
          tag: exercise.name,
          child: ClipSmoothRect(
            radius: SmoothBorderRadius.all(
              ElementReact.screenCornerRadius(context),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(color: colorScheme.surface),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                            primary: HSLColor.fromColor(
                              exercise.presentation.colorDarker,
                            )
                                .withLightness(0.25)
                                .withSaturation(0.45)
                                .toColor(),
                            onPrimary: HSLColor.fromColor(
                              exercise.presentation.colorDarker,
                            )
                                .withLightness(0.95)
                                .withSaturation(0.75)
                                .toColor(),
                            onBackground: HSLColor.fromColor(
                              exercise.presentation.colorDarker,
                            )
                                .withLightness(0.25)
                                .withSaturation(0.45)
                                .toColor(),
                            onSurfaceVariant: HSLColor.fromColor(
                              exercise.presentation.colorDarker,
                            )
                                .withLightness(0.15)
                                .withSaturation(0.45)
                                .toColor(),
                          ),
                    ),
                    child: SliverAppBar(
                      leading: IconButton(
                        icon: const Icon(ElementSymbol.chevronBack),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      pinned: true,
                      expandedHeight: 440,
                      stretch: true,
                      onStretchTrigger: () async {
                        ElementTouch.select();
                      },
                      flexibleSpace: FlexibleSpaceBar(
                        expandedTitleScale: 1.0,
                        background: CustomPaint(
                          painter: AirbrushPainter(
                            context: context,
                            frame: exercise.presentation.seed,
                            colorLight: exercise.presentation.colorLight,
                            colorDark: exercise.presentation.colorDark,
                            colorLighter: exercise.presentation.colorLighter,
                            colorDarker: exercise.presentation.colorDarker,
                          ),
                        ),
                        title: Builder(
                          builder: (context) {
                            final FlexibleSpaceBarSettings settings =
                                context.dependOnInheritedWidgetOfExactType<
                                    FlexibleSpaceBarSettings>()!;

                            final double deltaExtent =
                                settings.maxExtent - settings.minExtent;

                            final double t = clampDouble(
                              1.0 -
                                  (settings.currentExtent -
                                          settings.minExtent) /
                                      deltaExtent,
                              0.0,
                              1.0,
                            );

                            _controller.value = t;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Opacity(
                                  opacity: 1.0 -
                                      ElementMotion.easeOutExpo.transform(t),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      ElementScale.spaceS,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: SizedBox(
                                        height: 125 * (1.0 - t),
                                        width: 125 * (1.0 - t),
                                        child: CustomPaint(
                                          painter: AirbrushPainter(
                                            // assetString: exercise.icon,
                                            context: context,
                                            imageShader: widget.imageShader,
                                            frame: exercise.presentation.seed,
                                            colorLighter:
                                                exercise.presentation.colorDark,
                                            colorLight: exercise
                                                .presentation.colorDarker,
                                            colorDark: exercise
                                                .presentation.colorLighter,
                                            colorDarker: exercise
                                                .presentation.colorLight,
                                            height: 125 * (1.0 - t),
                                            width: 125 * (1.0 - t),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DefaultTextStyleTransition(
                                  style: TextStyleTween(
                                    begin: textTheme.headlineSmall!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                                    end: textTheme.titleMedium!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                                  ).animate(_controller),
                                  child: Text(exercise.name),
                                ),
                                Opacity(
                                  opacity: 1 -
                                      ElementMotion.easeOutExpo.transform(t),
                                  child: ClipRect(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      heightFactor: 1 - t,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          ElementScale.spaceS,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              exercise.description,
                                              style: textTheme.labelMedium!
                                                  .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                ElementScale.spaceM,
                                              ),
                                              child: ButtonFilled(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      // expanded: true,
                                                      builder: (childContext) =>
                                                          BlocProvider.value(
                                                        value: context.read<
                                                            ExerciseBloc>(),
                                                        child:
                                                            const ExerciseEditor(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: const Text("Start"),
                                              ),
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

                        // background: DecoratedBox(
                        //   decoration:
                        //       BoxDecoration(color: colorScheme.surfaceVariant),
                        // ),
                        // background: ,
                      ),
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
            ),
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
