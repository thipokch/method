part of 'exercise_list_view.dart';

class ExerciseListSliver extends StatelessWidget {
  const ExerciseListSliver({super.key});

  @override
  Widget build(BuildContext context) => const SliverToBoxAdapter(
        child: ExerciseListView(),
      );
}
