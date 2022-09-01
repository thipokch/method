import 'package:component/task/task_bloc.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/task/task_card.dart';

class TaskEditor extends StatefulWidget {
  const TaskEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TaskEditorState();
}

class TaskEditorState extends State<TaskEditor> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(onTextEditEvent);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();
    super.dispose();
  }

  void onTextEditEvent() {}

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: (() async {
          context.read<TaskBloc>().add(const TaskEvent.closeTask());

          return true;
        }),
        child: Container(
          padding: const EdgeInsets.all(ElementScale.spaceM),
          // decoration:
          //     BoxDecoration(color: Theme.of(context).colorScheme.background),
          child: Column(
            children: const [
              TaskCard(),
            ],
          ),
        ),
      );
}
