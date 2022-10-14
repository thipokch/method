import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/exercise_detail/view.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_repo/repository.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/art_page.dart';
import 'package:provider/provider.dart';

import '../../util/repo_builder.dart';

class ExerciseDetailRoute extends GoRouteData {
  final String id;

  const ExerciseDetailRoute(this.id);

  @override
  Widget build(BuildContext context) => RepoBuilder<Exercise>(
        futureBuilder: (_) => _.read<Repository>().exercises.get(id),
        onDone: (Exercise exercise) => MtArtPage(
          emoji: exercise.icon,
          name: exercise.name,
          description: exercise.description,
          cta: "Start",
          // ignore: no-empty-block
          onCtaPressed: () {},
          // onCtaPressed: () => SessionEditRoute().push(context),
          slivers: [
            SliverSafeArea(
              top: false,
              sliver: SliverPadding(
                padding: const EdgeInsets.all(ElementScale.spaceM),
                sliver: ExerciseSliverDetail(exercise: exercise),
              ),
            ),
          ],
        ),
        // onDone:  SessionEditor(),
      );
}
