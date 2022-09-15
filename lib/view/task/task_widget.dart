import 'package:component/task/task_bloc.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

part 'task_card.dart';

class _TaskWidget extends StatelessWidget {
  final Widget child;
  final Task task;

  const _TaskWidget({
    // ignore: unused_element
    super.key,
    required this.task,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => TaskBloc(task: task),
        child: child,
      );
}
