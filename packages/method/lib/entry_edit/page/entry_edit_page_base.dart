import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../entry_edit.dart';

class EntryEditPageBase extends StatelessWidget {
  const EntryEditPageBase({
    super.key,
    required this.slivers,
  });

  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: EntryEditSelector<String>(
          selector: (state) => state.task?.name ?? "",
          builder: (context, state) => Text(state),
        ),
        description: EntryEditSelector<String>(
          selector: (state) => state.task?.description ?? "",
          builder: (context, state) => Text(state),
        ),
        slivers: slivers,
        leading: const SizedBox(),
      );
}
