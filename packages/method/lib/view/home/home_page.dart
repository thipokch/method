import 'package:method_style/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/exercise_list/exercise_list_widget.dart';
import 'package:method/view/session_list/session_list_widget.dart';
import 'package:method_repo/repository.dart';
import 'package:method_ui/page/page.dart';

class HomePage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const HomePage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "method",
        description: "",
        leading: leading,
        trailing: trailing,
        slivers: [
          SliverToBoxAdapter(child: _HomeView()),
        ],
      );
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(ElementScale.spaceM),
        child: Column(children: [
          ExerciseListView.create(repo: context.read<Repository>()),
          SessionList.create(),
        ]),
      );
}
