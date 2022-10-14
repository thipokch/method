import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/exercise_list/view.dart';
import 'package:method_ui/page/page.dart';

class ExerciseListRoute extends GoRouteData {
  const ExerciseListRoute();

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Journal",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: ExerciseListView.create(),
          ),
        ],
      );
}
