import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/exercise_list/exercise_list.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_style/element_color.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/emoji/riso_emoji.dart';
import 'package:method_ui/riso/riso_canvas.dart';

part 'exercise_list_sliver.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  @override
  Widget build(BuildContext context) => ExerciseListBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => _Started(
            exercises: _.exercises,
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _Started extends StatelessWidget {
  const _Started({
    required this.exercises,
  });

  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: exercises
          // .where((e) => e.id != "note")
          .map<Widget>((e) => _Card(
                key: ValueKey(e.id),
                exercise: e,
                onTap: () => context
                    .read<ExerciseListBloc>()
                    .add(ExerciseListEvent.selectExercise(exercise: e)),
              ))
          .toList(),
    );
  }
}

class _Card extends StatelessWidget {
  final Exercise exercise;
  final GestureTapCallback? onTap;

  const _Card({
    super.key,
    required this.exercise,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Hero(
        tag: exercise.name,
        child: Theme(
          // Hero defaults to Materialapp's Theme
          data: Theme.of(context).copyWith(
            colorScheme: exercise.presentation
                .colorScheme(Theme.of(context).brightness)
                .harmonizeWith(Theme.of(context).colorScheme.primary),
          ),
          child: Builder(builder: (context) {
            final themeData = Theme.of(context);
            final colorScheme = themeData.colorScheme;
            final textTheme = themeData.textTheme;

            return Card(
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.all(
                  SmoothRadius(
                    cornerRadius: ElementScale.cornerLarge,
                    cornerSmoothing: ElementScale.cornerSmoothFactor,
                  ),
                ),
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(height: 100),
                child: InkWell(
                  onTap: onTap,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      SizedBox.expand(
                        child: Builder(
                          builder: (context) => RisoCanvas(
                            shaders: context.read(),
                            frame: 7,
                            colorDark: colorScheme.primaryContainer,
                            colorDarker: colorScheme.background,
                            colorLight: colorScheme.primaryContainer,
                            colorLighter: colorScheme.secondaryContainer,
                          ),
                        ),
                      ),
                      // SizedBox.expand(
                      //   child: CustomPaint(
                      //     painter: AirbrushPainter(
                      //       context: context,
                      //       // frame: 825,
                      //       frame: 7,
                      //       // frame: 2048.0 * 2,
                      //       colorLighter: colorScheme.secondaryContainer,
                      //       colorLight: colorScheme.primaryContainer,
                      //       colorDark: colorScheme.primaryContainer,
                      //       colorDarker: colorScheme.background,
                      //       // colorDarker: colorScheme.surfaceVariant,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: MtRisoEmoji(
                            shaders: context.read(),
                            emoji: exercise.icon,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          exercise.name,
                          style: textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        ),
                        subtitle: Text(
                          exercise.description,
                          style: textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      );
}
