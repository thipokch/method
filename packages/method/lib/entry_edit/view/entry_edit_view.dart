import 'package:flutter/cupertino.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit_converge/page/page.dart';
import 'package:method_core/model/task.dart';

part 'entry_edit_sliver.dart';

class EntryEditView extends StatelessWidget {
  const EntryEditView({super.key});

  @override
  Widget build(BuildContext context) => EntryEditSelector<Task?>(
        selector: (state) => state.task,
        builder: (context, state) => state == null
            ? const CupertinoActivityIndicator()
            : state.map(
                linear: (_) => const Text("linear"),
                diverge: (_) => const Text("diverge"),
                converge: (_) => const EntryEditConvergePage(),
                feedback: (_) => const Text("feedback"),
              ),
      );
}
