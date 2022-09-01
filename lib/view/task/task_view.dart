import 'package:component/task/task_bloc.dart';
import 'package:core/model/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/task/task_card.dart';
import 'package:method/view/task/task_editor.dart';
import 'package:method/view/task/task_focus.dart';

class TaskView extends StatelessWidget {
  const TaskView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TaskCard(
        onTap: () {
          final bloc = context.read<TaskBloc>();

          Navigator.of(context).push(
            TaskFocusRoute(
              builder: (context) =>
                  BlocProvider.value(value: bloc, child: const TaskEditor()),
            ),
          );

          bloc.add(
            TaskEvent.loadEntry(
              entry: Entry.create(
                template: bloc.task,
                collectionSlug: "collectionSlug",
                hierarchyPath: "hierarchyPath",
                id: "id",
              ),
            ),
          );
        },
      );
}
