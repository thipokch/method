import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:method/view/task/task_card.dart';

class TaskEditor extends StatelessWidget {
  const TaskEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(ElementScale.spaceM),
        // decoration:
        //     BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: Column(
          children: const [
            TaskCard(),
          ],
        ),
      );
}
