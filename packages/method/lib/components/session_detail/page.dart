import 'package:flutter/material.dart';
import 'package:method/components/session_detail/view.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/page.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

class SessionDetailPage extends StatelessWidget {
  const SessionDetailPage({
    super.key,
    required this.session,
  });

  final Session session;

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: session.template.name,
        description: format(session.createdAt),
        slivers: [
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: const EdgeInsets.all(ElementScale.spaceM),
              sliver: SessionDetailSliver(session: session),
            ),
          ),
        ],
      );
}
