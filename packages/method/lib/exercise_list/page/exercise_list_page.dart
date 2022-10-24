import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/home/route/home_route.dart';
import 'package:method_ui/page/page.dart';

import '../exercise_list.dart';

class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ExerciseListBloc(
          repository: context.read(),
          navigator: HomeRoute.navigator,
        )..add(const ExerciseListEvent.start()),
        child: const MtAppPage(
          name: Text("Exercise list"),
          description: Text(""),
          slivers: [
            ExerciseListSliver(),
          ],
        ),
      );
}
