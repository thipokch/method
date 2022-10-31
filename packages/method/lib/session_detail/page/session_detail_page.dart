import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../session_detail.dart';

class SessionDetailPage extends StatelessWidget {
  const SessionDetailPage({super.key});

  @override
  Widget build(BuildContext context) => MtAppPage(
        // leading: const SizedBox(),
        name: SessionDetailSelector<String?>(
          selector: (state) => state.exercise?.name,
          builder: (context, state) => Text(state ?? "Session Detail"),
        ),
        // description: SessionDetailSelector<DateTime>(
        //   selector: (state) => state.session?.createdAt ?? DateTime.now(),
        //   builder: (context, state) => Timeago(
        //     date: state,
        //     builder: (_, value) => Text(value),
        //   ),
        // ),
        slivers: const [
          SessionDetailSliver(),
        ],
      );
}
