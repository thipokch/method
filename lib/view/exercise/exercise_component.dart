import 'package:component/exercise/exercise_bloc.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:element/element_scale.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/airbrush/airbrush_gradient_image.dart';
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
            final colorScheme =
                state.exercise.presentation.colorScheme(Brightness.light);
            final ThemeData themeData = Theme.of(context).copyWith(
                // colorScheme: colorScheme,
                );
            final textTheme = themeData.textTheme;
            // final colorScheme = themeData.colorScheme;
            // final colors = themeData.extension<CustomColors>();

            return Hero(
              tag: exercise.name,
              child: Theme(
                data: themeData,
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
                            // child: DecoratedBox(
                            //   decoration: BoxDecoration(
                            //     color: colorScheme.primaryContainer,
                            //   ),
                            // ),

                            child: CustomPaint(
                              painter: AirbrushPainter(
                                context: context,
                                frame: 812,
                                // frame: 2048.0 * 2,
                                colorLighter: colorScheme.tertiaryContainer,
                                colorLight: colorScheme.secondaryContainer,
                                colorDark: colorScheme.primaryContainer,
                                colorDarker: colorScheme.background,
                                // colorDarker: colorScheme.surfaceVariant,
                              ),
                            ),
                          ),
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
                                  colorLighter: colorScheme.secondaryContainer,
                                  colorLight: colorScheme.primaryContainer,
                                  colorDark: colorScheme.background,
                                  colorDarker: colorScheme.primary,
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
