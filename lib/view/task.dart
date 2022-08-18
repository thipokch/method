import 'package:component/task/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskView extends StatelessWidget {
  const TaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBlock, TaskState>(
      bloc: TaskBlock(),
      builder: (context, state) => Text(state.data),
    );
  }
}
