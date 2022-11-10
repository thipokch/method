import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../entry_detail.dart';

class EntryDetailPage extends StatelessWidget {
  const EntryDetailPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Entry detail"),
        // description: Text(""),
        slivers: [
          EntryDetailSliver(),
        ],
      );
}
