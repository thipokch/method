import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';
import 'package:method_ui/page/page.dart';

class ResetPage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const ResetPage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Reset",
        leading: leading,
        trailing: trailing,
        slivers: const [
          SliverToBoxAdapter(
            child: _ResetView(),
          ),
        ],
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
