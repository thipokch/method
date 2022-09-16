part of 'task_editor.dart';

class TaskEditorScaffold extends StatefulWidget {
  final List<Widget> slivers;
  final String title;
  final String description;

  const TaskEditorScaffold({
    super.key,
    required this.title,
    required this.description,
    required this.slivers,
  });

  @override
  State<StatefulWidget> createState() => TaskEditorScaffoldState();
}

class TaskEditorScaffoldState extends State<TaskEditorScaffold>
    with TickerProviderStateMixin {
  final textEditController = TextEditingController();
  final scrollController = ScrollController();

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
    );
    textEditController.addListener(onTextEditEvent);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    _controller.dispose();
    textEditController.dispose();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  // ignore: no-empty-block
  void onTextEditEvent() {}

  @override
  Widget build(BuildContext context) {
    // final task = context.read<TaskBloc>().state.task;
    // final note = context.read<TaskBloc>().state.task.definitions.first;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      child: Container(
        decoration: BoxDecoration(color: colorScheme.background),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 72,
              collapsedHeight: 110,
              // floating: true,
              // snap: true,
              automaticallyImplyLeading: false,
              pinned: true,
              stretch: true,
              primary: false,
              expandedHeight: 220,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.0,
                title: Builder(builder: (context) {
                  final FlexibleSpaceBarSettings settings =
                      context.dependOnInheritedWidgetOfExactType<
                          FlexibleSpaceBarSettings>()!;

                  final double deltaExtent =
                      settings.maxExtent - settings.minExtent;

                  final double t = clampDouble(
                    1.0 -
                        (settings.currentExtent - settings.minExtent) /
                            deltaExtent,
                    0.0,
                    1.0,
                  );

                  _controller.value = t;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: ElementScale.spaceM,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        DefaultTextStyleTransition(
                          style: TextStyleTween(
                            begin: textTheme.titleLarge,
                            end: textTheme.titleMedium,
                          ).animate(_controller),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(widget.title),
                            ],
                          ),
                        ),
                        if (widget.description.isNotEmpty)
                          Opacity(
                            opacity: 1 - ElementMotion.easeOutExpo.transform(t),
                            child: ClipRect(
                              child: Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 1 - t,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: ElementScale.spaceM,
                                  ),
                                  child: Text(
                                    widget.description,
                                    textAlign: TextAlign.start,
                                    style: textTheme.labelLarge!.copyWith(
                                      color: colorScheme.onSurface
                                          .withOpacity(0.45),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            // SliverFillRemaining(
            //   child: PrimaryScrollController(
            //     controller: scrollController,
            //     child: widget.child,
            //   ),
            // ),
            ...widget.slivers,
          ],
        ),
      ),
    );
  }
}
