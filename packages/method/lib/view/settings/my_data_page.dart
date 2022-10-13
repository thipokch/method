import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_repo/repository.dart';
import 'package:method_ui/page/page.dart';

class MyDataPage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const MyDataPage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "My Data",
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
              title: const Text("Erase All Content and Settings"),
              // ignore: no-empty-block
              onTap: () => FlutterPlatformAlert.showCustomAlert(
                windowTitle: "Erase Your Data",
                text:
                    "Erasing will restore this app to initial state. This action cannot be undone.",
                positiveButtonTitle: "Not Now",
                negativeButtonTitle: "Erase",
              ).then((selection) {
                if (selection == CustomButton.negativeButton) {
                  final repo = context.read<Repository>();
                  final bloc = context.read<AppBloc>();

                  bloc.state.maybeMap(
                    loaded: (_) =>
                        bloc.add(AppEvent.updateServices(serviceProviders: [
                      () async => RepositoryProvider.value(
                            value: await repo.reset(),
                          ),
                    ])),
                    orElse: () => throw UnimplementedError(),
                  );

                  const ExerciseRoute().go(context);
                }
              }),
            ),
          ],
        ),
      );
}
