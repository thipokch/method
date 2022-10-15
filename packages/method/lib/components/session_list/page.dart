import 'package:flutter/material.dart';
import 'package:method/components/session_list/view.dart';
import 'package:method_core/model/session.dart';
import 'package:method_ui/page/page.dart';

class SessionListPage extends StatelessWidget {
  final List<Session> sessions;

  const SessionListPage({
    super.key,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Journal",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: SessionListView(sessions: sessions),
          ),
        ],
      );
}
