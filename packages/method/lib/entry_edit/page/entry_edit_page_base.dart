import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

import '../entry_edit.dart';

class EntryEditPageBase extends StatelessWidget {
  const EntryEditPageBase({
    super.key,
    required this.slivers,
    this.name,
    this.description,
  });

  final List<Widget> slivers;

  final Widget? name;
  final Widget? description;

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: name ??
            EntryEditSelector<String>(
              selector: (state) => state.task?.name ?? "",
              builder: (context, state) => Text(state),
            ),
        description: description ??
            EntryEditSelector<String>(
              selector: (state) => state.task?.description ?? "",
              builder: (context, state) => Text(state),
            ),
        slivers: slivers,
        leading: const SizedBox(),
      );
}
