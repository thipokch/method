import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/src/presenter/exercise_presenter.dart';
import 'package:method_core/src/presenter/exercise_state.dart';
import 'package:method_core/src/widget/exercise_progress_configuration.dart';

class ExerciseProgress extends StatefulWidget {
  const ExerciseProgress({Key? key}) : super(key: key);

  @override
  State<ExerciseProgress> createState() => _ExerciseProgressState();
}

class _ExerciseProgressState extends State<ExerciseProgress> {
  @override
  Widget build(BuildContext context) {
    final progressbarConfiguration =
        context.read<ExerciseProgressConfiguration>();

    return BlocBuilder<ExercisePresenter, ExerciseState>(
      builder: (context, state) {
        if (state is PresentingExerciseState) {
          return Padding(
            padding: progressbarConfiguration.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                progressbarConfiguration.showLabel &&
                        progressbarConfiguration.label != null
                    ? progressbarConfiguration.label!(
                        state.currentTaskIndex.toString(),
                        state.taskCount.toString(),
                      )
                    : const SizedBox.shrink(),
                ClipRRect(
                  borderRadius: progressbarConfiguration.borderRadius ??
                      BorderRadius.circular(14.0),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: progressbarConfiguration.height,
                        color: progressbarConfiguration.progressbarColor,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear,
                            width: (state.currentTaskIndex + 1) /
                                state.taskCount *
                                constraints.maxWidth,
                            height: progressbarConfiguration.height,
                            color: progressbarConfiguration
                                    .valueProgressbarColor ??
                                Theme.of(context).primaryColor,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
