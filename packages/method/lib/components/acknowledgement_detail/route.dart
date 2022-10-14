import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/acknowledgement_detail/view.dart';
import 'package:method_ui/page/page.dart';

class AcknowledgementDetailRoute extends GoRouteData {
  final String id;

  const AcknowledgementDetailRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: id,
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: AcknowledgementsDetailView(
              packageName: id,
            ),
          ),
        ],
      );
}
