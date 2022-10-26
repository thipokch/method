import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../entry_edit.dart';

class EntryEditPage extends StatelessWidget {
  const EntryEditPage({super.key});

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
        slivers: const [
          // EntryEditSliver(),
        ],
        leading: const SizedBox(),
      );
}
