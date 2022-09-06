import 'package:component/exercise/exercise_bloc.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:element/element_scale.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card_tile.dart';
import 'package:method/art/noise.dart';
import 'package:method/view/exercise/exercise_page.dart';

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
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) {
          final bloc = ExerciseBloc(exercise: widget.exercise);

          if (widget.session != null) {
            bloc.add(ExerciseEvent.loadSession(session: widget.session!));
          }

          return bloc;
        },
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            final exercise = state.exercise;

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
                  onTap: () {
                    final bloc = context.read<ExerciseBloc>();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider.value(
                          value: bloc,
                          child: const ExercisePage(),
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Hero(
                        tag: "noise/${exercise.name}",
                        child: Noise(
                          frame: exercise.presentation.seed,
                          colorA: exercise.presentation.colorA,
                          colorB: exercise.presentation.colorB,
                          colorC: exercise.presentation.colorC,
                          colorD: exercise.presentation.colorD,
                          // height: 500,
                        ),
                      ),
                      Hero(
                        tag: "info/${exercise.name}",
                        child: CardTile(
                          emoji: "",
                          title: exercise.name,
                          description: exercise.description,
                        ),
                      ),
                    ],
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
