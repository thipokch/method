import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/settings/view.dart';
import 'package:method_ui/page/page.dart';

export '../acknowledgement_detail/route.dart';
export '../acknowledgement_list/route.dart';
export '../appearance/route.dart';
export '../privacy/route.dart';

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: "You",
        slivers: [
          SliverToBoxAdapter(
            child: SettingsView(),
          ),
        ],
      );
}
