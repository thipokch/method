import 'package:core/model/exercise.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';
import 'package:method/content/content.dart';
import 'package:method/view/exercise/exercise_widget.dart';

class HomePage extends MethodPage {
  HomePage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
  }) : super(
          key: key,
          title: "method",
          child: _HomeView(),
        );
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(ElementScale.spaceM),
        child: Column(
          children: <Exercise>[
            Content.exerciseNote,
            Content.exerciseThought,
            Content.exerciseAct,
            Content.exerciseMood,
          ].map<Widget>((e) => ExerciseCard.create(exercise: e)).toList(),
        ),
      );
}
