import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit_converge/logic/entry_edit_converge_bloc.dart';
import 'package:method/entry_edit_converge/page/page.dart';
import 'package:method/entry_edit_diverge/entry_edit_diverge.dart';
import 'package:method/entry_edit_feedback/entry_edit_feedback.dart';
import 'package:method/entry_edit_linear/logic/entry_edit_linear_bloc.dart';
import 'package:method/entry_edit_linear/page/page.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

part 'entry_edit_sliver.dart';

// TODO: Rename to Selector
class EntryEditView extends StatelessWidget {
  const EntryEditView({super.key});

  @override
  Widget build(BuildContext context) => EntryEditSelector<Entry?>(
        selector: (state) => state.entry,
        builder: (context, state) => state != null
            ? state.template.map(
                //

                linear: (_) => BlocProvider(
                  create: (_) => EntryEditLinearBloc()
                    ..add(EntryEditLinearEvent.start(
                      definitions: state.builtMultiDefinition,
                    )),
                  child: EntryEditLinearListener(
                    listener: (context, state) => state.mapOrNull(
                      started: (value) => context.updateEntryDefinition(
                        definitions: value.definitions,
                      ),
                    ),
                    child: const EntryEditLinearPage(),
                  ),
                ),

                //

                diverge: (_) => BlocProvider(
                  create: (_) => EntryEditDivergeBloc()
                    ..add(EntryEditDivergeEvent.start(
                      definitions: state.builtDefinition,
                    )),
                  child: EntryEditDivergeListener(
                    listener: (context, state) => state.mapOrNull(
                      started: (value) => context.updateEntryDefinition(
                        definitions: value.definitions,
                      ),
                    ),
                    child: const EntryEditDivergePage(),
                  ),
                ),

                //

                converge: (_) => BlocProvider(
                  create: (_) => EntryEditConvergeBloc()
                    ..add(EntryEditConvergeEvent.start(
                      definitions: state.builtDefinition,
                    )),
                  child: EntryEditConvergeListener(
                    listener: (context, state) => state.mapOrNull(
                      started: (value) => context.updateEntryDefinition(
                        definitions: value.definitions,
                      ),
                    ),
                    child: const EntryEditConvergePage(),
                  ),
                ),

                //

                feedback: (_) => BlocProvider(
                  create: (_) => EntryEditFeedbackBloc()
                    ..add(EntryEditFeedbackEvent.start(
                      definitions: state.builtDefinition,
                    )),
                  child: EntryEditFeedbackListener(
                    listener: (context, state) => state.mapOrNull(
                      started: (value) => context.updateEntryDefinition(
                        definitions: value.definitions,
                      ),
                    ),
                    child: const EntryEditFeedbackPage(),
                  ),
                ),
              )
            : const CupertinoActivityIndicator(),
      );
}

extension _UpdateEntryDefinition on BuildContext {
  updateEntryDefinition({
    required Definition<TaskDefinition, EntryDefinition> definitions,
  }) =>
      read<EntryEditBloc>().add(
        EntryEditEvent.updateDefinition(
          definitions: definitions,
        ),
      );
}
