import 'package:flutter/material.dart';
import 'package:method/components/exercise_detail/view.dart';
import 'package:method/components/exercise_detail/widget.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/page/art_page.dart';
import 'package:provider/provider.dart';

class ExerciseDetailPage extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailPage({
    super.key,
    required this.exercise,
  });

  @override
  Widget build(BuildContext context) {
    return MtArtPage(
      emoji: exercise.icon,
      name: exercise.name,
      description: exercise.description,
      cta: "Start",
      onCtaPressed: () => ExerciseDetail.newSession(
        repo: context.read(),
        exerciseId: exercise.id,
      ),
      slivers: [
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.all(ElementScale.spaceM),
            sliver: ExerciseDetailSliver(exercise: exercise),
          ),
        ),
      ],
    );
  }
}
