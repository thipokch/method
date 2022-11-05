import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../exercise_list.dart';

class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ExerciseListBloc(
          repository: context.read(),
          navigator: context.read(),
        )..add(const ExerciseListEvent.start()),
        child: const MtAppPage(
          name: Text("Library"),
          // description: Text(""),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(16.0),
              sliver: ExerciseListSliver(),
            ),
          ],
        ),
      );
}
