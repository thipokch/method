part of 'exercise_component.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  static Widget create({required Exercise exercise}) => _ExerciseWidget(
        exercise: exercise,
        child: const ExercisePage(),
      );

  static Route route({
    required ExerciseBloc bloc,
    required ThemeData theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _ExerciseWidget.from(
          bloc: bloc,
          theme: theme,
          child: const ExercisePage(),
        ),
      );

  @override
  State<StatefulWidget> createState() => ExercisePageState();
}

class ExercisePageState extends State<ExercisePage>
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
      BlocBuilder<ExerciseBloc, ExerciseState>(builder: (context, state) {
        final bloc = context.read<ExerciseBloc>();
        final exercise = bloc.state.exercise;
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
                                            // assetString: exercise.icon,
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
                                                ElementScale.spaceM,
                                              ),
                                              child: ButtonFilled(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    ExerciseEditor.route(
                                                      bloc: bloc,
                                                      theme: themeData,
                                                    ),
                                                    // MaterialPageRoute(
                                                    //   // expanded: true,
                                                    //   builder: (childContext) =>
                                                    //       BlocProvider.value(
                                                    //     value: bloc,
                                                    //     child:
                                                    //         const ExerciseEditor(),
                                                    //   ),
                                                    // ),
                                                  );
                                                },
                                                child: const Text("Start"),
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

                        // background: DecoratedBox(
                        //   decoration:
                        //       BoxDecoration(color: colorScheme.surfaceVariant),
                        // ),
                        // background: ,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(ElementScale.spaceM),
                        child: Column(
                          children: <Widget>[
                            ...context
                                .read<ExerciseBloc>()
                                .state
                                .exercise
                                .definitions
                                .map((task) => TaskComponent(task: task)),
                          ],
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
