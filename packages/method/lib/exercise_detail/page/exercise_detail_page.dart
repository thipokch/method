import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../exercise_detail.dart';

class ExerciseDetailPage extends StatelessWidget {
  const ExerciseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Exercise detail"),
        description: Text(""),
        slivers: [
          ExerciseDetailSliver(),
        ],
      );
}
