import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:method/patch/nav_bar.dart';
import 'package:method/view/task/task_view.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            const MethodSliverNavigationBar(
              largeTitle: Text('Task'),
            ),
          ],
          body: Material(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  TaskView(
                    task: Task.create(
                      name: "name",
                      description: "description",
                      collectionSlug: "collectionSlug",
                      hierarchyPath: "hierarchyPath",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

void showTaskPreview({
  required BuildContext context,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const TaskPreview(),
  ));
}
