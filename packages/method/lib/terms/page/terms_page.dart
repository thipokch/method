import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../terms.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Terms of Service"),
        // description: Text(""),
        slivers: [
          TermsSliver(),
        ],
      );
}
