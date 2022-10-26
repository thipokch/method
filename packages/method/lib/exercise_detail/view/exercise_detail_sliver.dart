part of 'exercise_detail_view.dart';

class ExerciseDetailSliver extends StatelessWidget {
  const ExerciseDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => ExerciseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount:
                  _.exercise.definitions.length - 1, // Subtract Feedback
              (context, index) =>
                  _DetailTile(task: _.exercise.definitions[index]),
            ),
          ),
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
        ),
      );
}
