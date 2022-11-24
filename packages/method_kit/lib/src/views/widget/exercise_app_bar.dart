import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:method_kit/src/configuration/app_bar_configuration.dart';
import 'package:method_kit/src/controller/exercise_controller.dart';
import 'package:method_kit/src/widget/exercise_progress.dart';
import 'package:provider/provider.dart';

class ExerciseAppBar extends StatelessWidget {
  final AppBarConfiguration appBarConfiguration;
  final ExerciseController? controller;

  const ExerciseAppBar({
    super.key,
    required this.appBarConfiguration,
    this.controller,
  });

  @override
  PlatformAppBar build(BuildContext context) {
    final showProgress =
        appBarConfiguration.showProgress ?? context.read<bool>();
    final canGoBack = appBarConfiguration.canBack ?? true;

    final exerciseController = controller ?? context.read<ExerciseController>();

    return PlatformAppBar(
      leading: canGoBack
          ? appBarConfiguration.leading ??
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  exerciseController.taskBack(
                    context: context,
                  );
                },
              )
          : Container(),
      title: showProgress ? const ExerciseProgress() : const SizedBox.shrink(),
      trailingActions: [
        TextButton(
          child: appBarConfiguration.trailing ??
              Text(
                context.read<Map<String, String>?>()?['cancel'] ?? 'Cancel',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
          onPressed: () => exerciseController.closeExercise(
            context: context,
          ),
        ),
      ],
    );
  }
}
