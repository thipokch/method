import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:method/view/task_view.dart';

import '../patch/app_bar.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            SliverAppBarPatch.medium(
              leading: IconButton(
                icon: const Icon(ElementIcon.chevronBack),
                onPressed: () => Navigator.of(context).pop(),
                highlightColor: Colors.transparent,
              ),
              title: const Text('Task'),
            ),
          ],
          body: Column(
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
