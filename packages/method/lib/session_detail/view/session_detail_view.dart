import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_detail/logic/entry_detail_bloc.dart';
import 'package:method/entry_detail/view/entry_detail_view.dart';
import 'package:method/session_detail/session_detail.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/util/list.dart';

part 'session_detail_sliver.dart';

class SessionDetailView extends StatelessWidget {
  const SessionDetailView({super.key});

  @override
  Widget build(BuildContext context) => SessionDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => ListView.builder(
            itemCount: _.session.definitions.length,
            itemBuilder: (context, index) => Text(
              _.session.definitions.elementAtOrNull(index)?.template.name ??
                  "Null",
            ),
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}
