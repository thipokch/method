part of 'session_widget.dart';

class SessionPage extends StatefulWidget {
  const SessionPage({super.key});

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      _SessionWidget(
        exercise: exercise,
        session: session,
        child: const SessionPage(),
      );

  static Route route({
    required SessionBloc bloc,
    required ThemeData theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _SessionWidget.from(
          bloc: bloc,
          theme: theme,
          child: const SessionPage(),
        ),
      );

  @override
  State<StatefulWidget> createState() => SessionPageState();
}

class SessionPageState extends State<SessionPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionBloc, SessionState>(builder: (context, state) {
        final bloc = context.read<SessionBloc>();
        final exercise = bloc.state.exercise;
        final definitions = exercise.definitions;
        final themeData = Theme.of(context);
        final imageShader = themeData.extension<ThemeImageShader>()?.shader;
        final colorScheme = themeData.colorScheme;
        final textTheme = themeData.textTheme;

        return Hero(
          tag: exercise.name,
          child: Theme(
            data: themeData,
            child: ClipSmoothRect(
              radius: SmoothBorderRadius.all(
                ElementReact.screenCornerRadius(context),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(color: colorScheme.surface),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    SliverAppBar(
                      leading: IconButton(
                        icon: const Icon(ElementSymbol.chevronCircleBackFilled),
                        onPressed: () => Navigator.of(context).pop(),
                        iconSize: 32.00,
                        color: colorScheme.primary,
                      ),
                      pinned: true,
                      expandedHeight: 440,
                      stretch: true,
                      onStretchTrigger: () async {
                        ElementTouch.select();
                      },
                      flexibleSpace: FlexibleSpaceBar(
                        expandedTitleScale: 1.0,
                        background: CustomPaint(
                          painter: AirbrushPainter(
                            context: context,
                            frame: exercise.presentation.seed,
                            colorLighter: colorScheme.tertiaryContainer,
                            colorLight: colorScheme.secondaryContainer,
                            colorDark: colorScheme.primaryContainer,
                            colorDarker: colorScheme.background,
                          ),
                        ),
                        title: Builder(
                          builder: (context) {
                            final FlexibleSpaceBarSettings settings =
                                context.dependOnInheritedWidgetOfExactType<
                                    FlexibleSpaceBarSettings>()!;

                            final double deltaExtent =
                                settings.maxExtent - settings.minExtent;

                            final double t = clampDouble(
                              1.0 -
                                  (settings.currentExtent -
                                          settings.minExtent) /
                                      deltaExtent,
                              0.0,
                              1.0,
                            );

                            _controller.value = t;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Opacity(
                                  opacity: 1.0 -
                                      ElementMotion.easeOutExpo.transform(t),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      ElementScale.spaceS,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: SizedBox(
                                        height: 125 * (1.0 - t),
                                        width: 125 * (1.0 - t),
                                        child: CustomPaint(
                                          painter: AirbrushPainter(
                                            context: context,
                                            imageShader: imageShader,
                                            frame: exercise.presentation.seed,
                                            colorLighter:
                                                colorScheme.secondaryContainer,
                                            colorLight:
                                                colorScheme.primaryContainer,
                                            colorDark: colorScheme.background,
                                            colorDarker: colorScheme.primary,
                                            height: 125 * (1.0 - t),
                                            width: 125 * (1.0 - t),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DefaultTextStyleTransition(
                                  style: TextStyleTween(
                                    begin: textTheme.headlineSmall!.copyWith(
                                      color: colorScheme.onBackground,
                                    ),
                                    end: textTheme.titleMedium!.copyWith(
                                      color: colorScheme.onBackground,
                                    ),
                                  ).animate(_controller),
                                  child: Text(exercise.name),
                                ),
                                Opacity(
                                  opacity: 1 -
                                      ElementMotion.easeOutExpo.transform(t),
                                  child: ClipRect(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      heightFactor: 1 - t,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                          ElementScale.spaceS,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              exercise.description,
                                              style: textTheme.labelMedium!
                                                  .copyWith(
                                                color: colorScheme.onBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                ElementScale.spaceL,
                                              ),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                child: ButtonFilled(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                      SessionEditor.route(
                                                        bloc: bloc,
                                                        theme: themeData,
                                                      ),
                                                    );
                                                  },
                                                  child: const Text("Start"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SliverSafeArea(
                      top: false,
                      sliver: SliverPadding(
                        padding: const EdgeInsets.all(ElementScale.spaceM),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: definitions.length - 1,
                            (context, index) => Material(
                              type: MaterialType.transparency,
                              child: TaskTile.create(task: definitions[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
