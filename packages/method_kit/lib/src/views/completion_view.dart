import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:method_kit/src/result/step/completion_step_result.dart';
import 'package:method_kit/src/steps/predefined_steps/completion_step.dart';
import 'package:method_kit/src/views/widget/step_view.dart';

class CompletionView extends StatelessWidget {
  final CompletionStep completionStep;
  final DateTime _startDate = DateTime.now();
  final String assetPath;

  CompletionView({super.key, required this.completionStep, this.assetPath = ""});

  @override
  Widget build(BuildContext context) {
    return StepView(
      step: completionStep,
      resultFunction: () => CompletionStepResult(
        completionStep.stepIdentifier,
        _startDate,
        DateTime.now(),
      ),
      title: Text(
        completionStep.title,
        style: Theme.of(context).textTheme.headline2,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0),
        child: Column(
          children: [
            Text(
              completionStep.text,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: SizedBox(
                width: 150.0,
                height: 150.0,
                child: assetPath.isNotEmpty
                    ? Lottie.asset(
                        assetPath,
                        repeat: false,
                      )
                    : Lottie.asset(
                        'assets/fancy_checkmark.json',
                        package: 'method_kit',
                        repeat: false,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
