import 'package:flutter/cupertino.dart';
import 'package:method/session_detail/session_detail.dart';
import 'package:method_core/util/list.dart';

// import '../session_detail.dart';

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
