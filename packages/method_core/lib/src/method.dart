import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/views/task_create_view.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart' show IterableExtension;

class Method extends StatefulWidget {
  /// [Exercise] for the configuraton of the exercise
  final Exercise exercise;

  /// [ThemeData] to override the Theme of the subtree
  final ThemeData? themeData;

  /// Function which is called after the results are collected
  final Function(ExerciseResult) onResult;

  /// [ExerciseController] to override the navigation methods
  /// onNextTask, onBackTask, onCloseExercise
  final ExerciseController? exerciseController;

  /// The appbar that is shown at the top
  final Widget Function(AppBarConfig appBarConfiguration)? appBar;

  /// If the progressbar shoud be show in the appbar
  final bool? showProgress;

  // Changes the styling of the progressbar in the appbar
  final ExerciseProgressConfiguration? exerciseProgressbarConfiguration;

  final Map<String, String>? localizations;

  const Method({
    super.key,
    required this.exercise,
    required this.onResult,
    this.themeData,
    this.exerciseController,
    this.appBar,
    this.showProgress,
    this.exerciseProgressbarConfiguration,
    this.localizations,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MethodState createState() => _MethodState();
}

class _MethodState extends State<Method> {
  late ExerciseNavigator _exerciseNavigator;

  @override
  void initState() {
    super.initState();
    _exerciseNavigator = _createExerciseNavigator();
  }

  ExerciseNavigator _createExerciseNavigator() {
    switch (widget.exercise.runtimeType) {
      case OrderedExercise:
        return OrderedExerciseNavigator(widget.exercise);
      case NavigableExercise:
        return NavigableExerciseNavigator(widget.exercise);
      default:
        return OrderedExerciseNavigator(widget.exercise);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: widget.themeData ?? Theme.of(context),
      child: MultiProvider(
        providers: [
          Provider<ExerciseNavigator>.value(value: _exerciseNavigator),
          Provider<ExerciseController>.value(
            value: widget.exerciseController ?? ExerciseController(),
          ),
          Provider<bool>.value(value: widget.showProgress ?? true),
          Provider<ExerciseProgressConfiguration>.value(
            value: widget.exerciseProgressbarConfiguration ??
                ExerciseProgressConfiguration(),
          ),
          Provider<Map<String, String>?>.value(
            value: widget.localizations,
          ),
        ],
        child: BlocProvider(
          create: (BuildContext context) => ExercisePresenter(
            exerciseNavigator: _exerciseNavigator,
            onResult: widget.onResult,
          ),
          child: ExercisePage(
            length: widget.exercise.tasks.length,
            onResult: widget.onResult,
            appBar: widget.appBar,
          ),
        ),
      ),
    );
  }
}

class ExercisePage extends StatefulWidget {
  final int length;
  final Widget Function(AppBarConfig appBarConfiguration)? appBar;
  final Function(ExerciseResult) onResult;

  const ExercisePage({
    super.key,
    required this.length,
    required this.onResult,
    this.appBar,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: widget.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  // ignore: long-method
  Widget build(BuildContext context) {
    return BlocConsumer<ExercisePresenter, ExerciseState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) async {
        if (state is ExerciseResultState) {
          widget.onResult.call(state.result);
        }
        if (state is PresentingExerciseState) {
          tabController.animateTo(state.currentTaskIndex);
        }
      },
      builder: (BuildContext context, ExerciseState state) {
        if (state is PresentingExerciseState) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: state.currentTask.showAppBar
                ? PreferredSize(
                    preferredSize: const Size(
                      double.infinity,
                      70.0,
                    ),
                    child: widget.appBar != null
                        ? widget.appBar!.call(state.appBarConfiguration)
                        : ExerciseAppBar(
                            appBarConfiguration: state.appBarConfiguration,
                          ),
                  )
                : null,
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: state.tasks
                  .map(
                    (e) => Container(
                      key: ValueKey<String>(
                        e.taskIdentifier.id,
                      ),
                      child: e.createView(
                        questionResult: state.questionResults.firstWhereOrNull(
                          (element) => element.id == e.taskIdentifier,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        } else if (state is ExerciseResultState && state.currentTask != null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
