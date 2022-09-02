import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:method/content/content.dart';
import 'package:method/view/task/task_component.dart';

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
  Widget build(BuildContext context) => Column(
        children: const [
          TaskComponent(task: Content.taskContext),
        ],
      );
}
