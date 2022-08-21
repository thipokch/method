import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:method/view/task_view.dart';

class ViewPreview extends StatelessWidget {
  const ViewPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
}

void showViewPreview({
  required BuildContext context,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const ViewPreview(),
  ));
}
