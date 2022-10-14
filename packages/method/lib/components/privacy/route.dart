import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/privacy/view.dart';
import 'package:method_ui/page/page.dart';

class PrivacyRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: "Data and Privacy",
        slivers: [
          SliverToBoxAdapter(
            child: PrivacyView(),
          ),
        ],
      );
}
