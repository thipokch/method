part of 'exercise_widget.dart';

class ExerciseEditor extends StatefulWidget {
  const ExerciseEditor({super.key});

  static Route route({
    required ExerciseBloc bloc,
    required ThemeData theme,
  }) =>
      CupertinoPageRoute(
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
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              plugins: [ExerciseSwiperDismiss()],
              loop: false,
              indicatorLayout: PageIndicatorLayout.WARM,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(ElementScale.spaceNone),
                builder: ExerciseSwiperPagination(),
                // builder: DotSwiperPaginationBuilder(
                //   activeColor: colorScheme.primary,
                //   color: colorScheme.surfaceVariant,
                //   size: ElementScale.size03 + .0,
                //   activeSize: ElementScale.size03 + .0,
                // ),
              ),
              itemCount: state.exercise.definitions.length,
              itemBuilder: (context, index) => BlocProvider(
                create: (context) =>
                    TaskBloc(task: state.exercise.definitions[index]),
                child: const TaskEditor(),
              ),
            );
          },
        ),
      );
}

class ExerciseSwiperDismiss extends SwiperPlugin {
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

class ExerciseSwiperPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: MediaQuery.of(context).padding.bottom * 3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.outline.withOpacity(0),
            colorScheme.outline.withOpacity(.16),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: ElementScale.spaceS * 1.25,
          horizontal: ElementScale.spaceS * 1.5,
        ),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: const BorderRadius.all(
            Radius.circular(ElementScale.cornerLarge),
          ),
          boxShadow: [
            BoxShadow(
              color: colorScheme.outline.withOpacity(.12),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: DotSwiperPaginationBuilder(
          activeColor: colorScheme.primary,
          color: colorScheme.surfaceVariant,
          size: ElementScale.size03 + .0,
          activeSize: ElementScale.size03 + .0,
        ).build(context, config),
      ),
    );
  }
}
