part of 'exercise_widget.dart';

class ExerciseEditor extends StatefulWidget {
  const ExerciseEditor({super.key});

  static Route route({
    required ExerciseBloc bloc,
    required ThemeData theme,
  }) =>
      CupertinoPageRoute(
        // expanded: true,
        builder: (context) => _ExerciseWidget.from(
          bloc: bloc,
          theme: theme,
          child: const ExerciseEditor(),
        ),
      );

  @override
  State<StatefulWidget> createState() => ExerciseEditorState();
}

class ExerciseEditorState extends State<ExerciseEditor> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            final bloc = context.read<ExerciseBloc>();
            final colorScheme = Theme.of(context).colorScheme;
            // final colorScheme = state.exercise.presentation
            //     .colorScheme(Theme.of(context).brightness)
            //     .harmonizeWith(Theme.of(context).colorScheme.primary);

            state.whenOrNull(
              exerciseLoaded: (exercise) => bloc.add(
                ExerciseEvent.loadSession(
                  session: Session.create(
                    template: state.exercise,
                    collectionSlug: "",
                    hierarchyPath: "",
                    id: "",
                  ),
                ),
              ),
            );

            return Swiper(
              plugins: [ExerciseSwiperPlugin()],
              loop: false,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(ElementScale.spaceM),
                builder: DotSwiperPaginationBuilder(
                  activeColor: colorScheme.primary,
                  color: colorScheme.surfaceVariant,
                  size: ElementScale.size03 + .0,
                  activeSize: ElementScale.size03 + .0,
                ),
              ),
              // pagination: DotSwiperPaginationBuilder(
              //   activeColor: colorScheme.primary,
              //   color: colorScheme.surface,

              // ),
              itemCount: state.exercise.definitions.length,
              itemBuilder: (context, index) => BlocProvider(
                create: (context) =>
                    TaskBloc(task: state.exercise.definitions[index]),
                child: const TaskEditor(),
              ),
            );

            // return BlocProvider(
            //   create: (context) => TaskBloc(
            //     task: context.read<ExerciseBloc>().state.exercise.definitions.first,
            //   ),
            //   child: const TaskEditor(),
            // );
          },
        ),
      );
}

class ExerciseSwiperPlugin extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) => SizedBox(
        height: kToolbarHeight + MediaQuery.of(context).padding.top / 4,
        child: NavigationToolbar(
          trailing: AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              icon: const Icon(ElementSymbol.dismissCircleFilled),
              onPressed: () => Navigator.of(context).pop(),
              iconSize: 32.00,
            ),
          ),
        ),
      );
}
