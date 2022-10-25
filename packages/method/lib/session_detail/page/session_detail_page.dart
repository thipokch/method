import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../session_detail.dart';

class SessionDetailPage extends StatelessWidget {
  const SessionDetailPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Session detail"),
        description: Text(""),
        slivers: [
          SessionDetailSliver(),
        ],
      );
}
