import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../exercise_detail.dart';

class ExerciseDetailPage extends StatelessWidget {
  const ExerciseDetailPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ExerciseDetailBloc(),
        child: const MtAppPage(
          name: Text("Exercise detail"),
          description: Text(""),
          slivers: [
            ExerciseDetailSliver(),
          ],
        ),
      );
}
