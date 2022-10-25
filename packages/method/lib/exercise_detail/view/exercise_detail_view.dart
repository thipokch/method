import 'package:flutter/cupertino.dart';
import 'package:method/exercise_detail/logic/logic.dart';
import 'package:method_core/util/list.dart';

// import '../exercise_detail.dart';

part 'exercise_detail_sliver.dart';

class ExerciseDetailView extends StatelessWidget {
  const ExerciseDetailView({super.key});

  @override
  Widget build(BuildContext context) => ExerciseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => ListView.builder(
            itemCount: _.exercise.definitions.length,
            itemBuilder: (context, index) => Text(
              _.exercise.definitions.elementAtOrNull(index)?.name ?? "Null",
            ),
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}
