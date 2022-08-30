import 'package:core/model/task.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';

import '../task/task_view.dart';

class HomePage extends MethodPage {
  HomePage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
  }) : super(
          key: key,
          title: "method",
          child: _HomeView(),
        );
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(ElementScale.spaceM),
        child: Column(
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
      );
}
