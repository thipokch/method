part of 'session_widget.dart';

class SessionEditor extends StatefulWidget {
  const SessionEditor({super.key});

  static Route route({
    required Exercise exercise,
    Session? session,
    // ThemeData? theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _Session(
          exercise: exercise,
          session: session,
          // theme: theme,
          child: const SessionEditor(),
        ),
      );

  @override
  State<StatefulWidget> createState() => SessionEditorState();
}

class SessionEditorState extends State<SessionEditor> {
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
        child: BlocBuilder<SessionBloc, SessionState>(
          builder: (context, state) => state.maybeWhen(
            sessionLoaded: (exercise, session) => Swiper(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              loop: false,
              indicatorLayout: PageIndicatorLayout.WARM,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(ElementScale.spaceNone),
                builder: ExerciseSwiperNavigation(),
              ),
              itemCount: state.exercise.definitions.length,
              itemBuilder: (context, index) => BlocProvider(
                create: (context) => EntryBloc(
                  repo: context.read<Repository>(),
                  task: state.exercise.definitions[index],
                  entry: index < session.definitions.length
                      ? session.definitions[index]
                      : null,
                ),
                child: EntryEditor(
                  listener: context.read<SessionBloc>().handleEntryBlocState,
                ),
              ),
            ),
            orElse: () => const CupertinoActivityIndicator(),
          ),
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

class ExerciseSwiperNavigation extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    final colorScheme = Theme.of(context).colorScheme;

    return FloatScaffold(
      leading: FloatContainer(
        padding: EdgeInsets.zero,
        child: config.activeIndex == 0
            ? IconButton(
                icon: const Icon(ElementSymbol.dismiss),
                color: colorScheme.primary,
                onPressed: () => Navigator.of(context).pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronBack),
                color: colorScheme.primary,
                onPressed: () => config.controller.previous(),
              ),
      ),
      middle: FloatContainer(
        child: DotSwiperPaginationBuilder(
          activeColor: colorScheme.primary,
          color: colorScheme.surfaceVariant,
          size: ElementScale.size03 + .0,
          space: ElementScale.size03 + .0,
          activeSize: ElementScale.size03 + .0,
        ).build(context, config),
      ),
      trailing: FloatContainer(
        padding: EdgeInsets.zero,
        child: config.activeIndex == config.itemCount - 1
            ? IconButton(
                icon: const Icon(ElementSymbol.checkmark),
                color: colorScheme.primary,
                onPressed: () => Navigator.of(context).pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronForward),
                color: colorScheme.primary,
                onPressed: () => config.controller.next(),
              ),
      ),
    );
  }
}
