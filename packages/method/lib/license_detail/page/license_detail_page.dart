import 'package:flutter/material.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/page.dart';

import '../license_detail.dart';

class LicenseDetailPage extends StatelessWidget {
  const LicenseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("License detail"),
        // description: Text(""),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(ElementScale.spaceM),
            sliver: LicenseDetailSliver(),
          ),
        ],
      );
}
