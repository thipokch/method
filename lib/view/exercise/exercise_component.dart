import 'package:component/exercise/exercise_bloc.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:element/element_scale.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/airbrush/airbrush_image.dart';
import 'package:matter/airbrush/airbrush_painter.dart';
import 'package:method/view/exercise/exercise_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ExerciseComponent extends StatefulWidget {
  final Exercise exercise;
  final Session? session;

  const ExerciseComponent({
    super.key,
    required this.exercise,
    this.session,
  });

  @override
  State<StatefulWidget> createState() => ExerciseComponentState();
}

class ExerciseComponentState extends State<ExerciseComponent> {
  ImageShader? imageShader;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) {
          final bloc = ExerciseBloc(exercise: widget.exercise);

          loadEmojiShader(bloc.state.exercise.icon).then(
            (value) {
              setState(() {
                imageShader = value;
              });
            },
          );

          if (widget.session != null) {
            bloc.add(ExerciseEvent.loadSession(session: widget.session!));
          }

          return bloc;
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            final exercise = state.exercise;
            final textTheme = Theme.of(context).textTheme;

            return Hero(
              tag: exercise.name,
              child: Card(
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
                    onTap: () {
                      final bloc = context.read<ExerciseBloc>();

                      Navigator.of(context).push(
                        ModalBottomSheetRoute(
                          expanded: true,
                          builder: (context) => BlocProvider.value(
                            value: bloc,
                            child: ExercisePage(
                              imageShader: imageShader,
                            ),
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox.expand(
                          child: CustomPaint(
                            painter: AirbrushPainter(
                              context: context,
                              frame: 400.0 * 2,
                              // frame: 2048.0 * 2,
                              colorLighter: exercise.presentation.colorLighter,
                              colorLight: exercise.presentation.colorLight,
                              colorDark: exercise.presentation.colorLighter,
                              colorDarker: exercise.presentation.colorLight,
                              // colorDarker: colorScheme.surfaceVariant,
                            ),
                          ),
                        ),
                        // SizedBox.expand(
                        //   child: DecoratedBox(
                        //     decoration: BoxDecoration(
                        //       color: HSLColor.fromColor(
                        //         exercise.presentation.colorLight,
                        //       )
                        //           .withLightness(0.95)
                        //           .withSaturation(0.35)
                        //           .toColor(),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CustomPaint(
                              painter: AirbrushPainter(
                                context: context,
                                imageShader: imageShader,
                                frame: exercise.presentation.seed,
                                colorLighter:
                                    exercise.presentation.colorLighter,
                                colorLight: exercise.presentation.colorLight,
                                colorDark: exercise.presentation.colorLighter,
                                colorDarker: exercise.presentation.colorLight,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            exercise.name,
                            style: textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: HSLColor.fromColor(
                                exercise.presentation.colorDarker,
                              )
                                  .withLightness(0.20)
                                  .withSaturation(0.55)
                                  .toColor(),
                            ),
                          ),
                          subtitle: Text(
                            exercise.description,
                            style: textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: HSLColor.fromColor(
                                exercise.presentation.colorDarker,
                              )
                                  .withLightness(0.20)
                                  .withSaturation(0.55)
                                  .toColor(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          // ButtonTonal(
          //   child: Text(context.read<ExerciseBloc>().state.exercise.name),
          //   onPressed: () {
          //     final bloc = context.read<ExerciseBloc>();

          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => BlocProvider.value(
          //           value: bloc,
          //           child: const ExercisePage(),
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ),
      );
}
