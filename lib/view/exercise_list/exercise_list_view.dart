part of 'exercise_list_widget.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  static Widget create({required Repository repo}) => _ExerciseListWidget(
        repo: repo,
        child: const ExerciseListView(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ExerciseListBloc, ExerciseListState>(
        builder: (context, state) => state.when(
          initial: () => TextButton(
            // ignore: no-empty-block
            onPressed: () {},
            child: const Text("add session"),
          ),
          loaded: (exercises) => Column(
            children: exercises
                .map<Widget>((e) => SessionCard.create(exercise: e))
                .toList(),
          ),
        ),
      );
}
