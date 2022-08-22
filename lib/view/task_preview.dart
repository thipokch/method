import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:method/view/task_view.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("View"),
          leading: IconButton(
            icon: const Icon(ElementIcon.brandArrowLeft),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: const <Widget>[],
        ),
        body: TaskView(),
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
