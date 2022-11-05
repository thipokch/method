import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../license_list.dart';

class LicenseListPage extends StatelessWidget {
  const LicenseListPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Acknowledgments"),
        // description: Text(""),
        slivers: [
          LicenseListSliver(),
        ],
      );
}
