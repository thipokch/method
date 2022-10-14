import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/appearance/view.dart';
import 'package:method_ui/page/page.dart';

class AppearanceRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: "Appearance",
        slivers: [
          SliverToBoxAdapter(
            child: AppearanceView(),
          ),
        ],
      );
}
