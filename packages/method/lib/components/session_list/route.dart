import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/session_list/view.dart';
import 'package:method_ui/page/page.dart';

class SessionListRoute extends GoRouteData {
  const SessionListRoute();

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Journal",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: SessionListView.create(),
          ),
        ],
      );
}
