import 'package:core/model/exercise.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/page/page.dart';
import 'package:method/content/content.dart';
import 'package:method/view/session/session_widget.dart';
import 'package:method/view/session_list/session_list_widget.dart';
import 'package:repository/repository.dart';

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
        child: Column(children: [
          ...<Exercise>[
            Content.exerciseNote,
            Content.exerciseThought,
            Content.exerciseAct,
            Content.exerciseMood,
          ].map<Widget>((e) => SessionCard.create(exercise: e)).toList(),
          SessionListView.create(repo: context.read<Repository>()),
        ]),
      );
}
