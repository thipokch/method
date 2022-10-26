import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../session_edit.dart';

class SessionEditPage extends StatelessWidget {
  const SessionEditPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Session edit"),
        description: Text(""),
        slivers: [
          SessionEditSliver(),
        ],
      );
}
