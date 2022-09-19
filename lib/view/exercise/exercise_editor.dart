part of 'exercise_widget.dart';

class ExerciseEditor extends StatefulWidget {
  const ExerciseEditor({super.key});

  static Route route({
    required ExerciseBloc bloc,
    required ThemeData theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
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
              loop: false,
              indicatorLayout: PageIndicatorLayout.WARM,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(ElementScale.spaceNone),
                builder: ExerciseSwiperPagination(),
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
  Widget build(BuildContext context, SwiperPluginConfig config) => Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: kToolbarHeight + MediaQuery.of(context).padding.top / 4,
          child: NavigationToolbar(
            leading: AspectRatio(
              aspectRatio: 1,
              child: IconButton(
                icon: const Icon(ElementSymbol.dismissCircleFilled),
                onPressed: () => Navigator.of(context).pop(),
                iconSize: 32.00,
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  disabledBackgroundColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                ),
              ),
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
      // height: MediaQuery.of(context).padding.bottom * 4,
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).padding.bottom * 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.background.withOpacity(0),
            colorScheme.background,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            // alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: ElementScale.spaceM,
              horizontal: ElementScale.spaceM * 1.2,
            ),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: const BorderRadius.all(
                Radius.circular(ElementScale.cornerExtraLarge),
              ),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.outline.withOpacity(.16),
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
              space: ElementScale.size03 + .0,
              activeSize: ElementScale.size03 + .0,
            ).build(context, config),
          ),
          Container(
            // alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
