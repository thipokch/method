import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/page/page.dart';
import 'package:repository/repository.dart';

class ResetPage extends MethodPage {
  const ResetPage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
    super.controller,
  }) : super(
          key: key,
          title: "Reset",
          child: const _ResetView(),
        );
}

class _ResetView extends StatelessWidget {
  const _ResetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text("Reset"),
              // ignore: no-empty-block
              onTap: () {},
            ),
            ListTile(
              title: const Text("Erase All Content and Settings"),
              onTap: () => context.read<Repository>().clear(),
            ),
          ],
        ),
      );
}
