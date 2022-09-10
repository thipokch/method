import 'package:component/task/task_bloc.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEditor extends StatefulWidget {
  const TaskEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TaskEditorState();
}

class TaskEditorState extends State<TaskEditor> with TickerProviderStateMixin {
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
    final note = context.read<TaskBloc>().state.task.definitions.first;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
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
            actions: [
              AspectRatio(
                aspectRatio: 1,
                child: IconButton(
                  icon: const Icon(ElementSymbol.dismissCircleFilled),
                  iconSize: 32,
                  onPressed: () => Navigator.of(context).pop(),
                  highlightColor: Colors.transparent,
                ),
              ),
            ],
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
                          begin: textTheme.headlineSmall,
                          end: textTheme.titleMedium,
                        ).animate(_controller),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(note.name),
                          ],
                        ),
                      ),
                      if (note.description.isNotEmpty)
                        Opacity(
                          opacity: 1 - ElementMotion.easeOutExpo.transform(t),
                          child: ClipRect(
                            child: Align(
                              alignment: Alignment.topCenter,
                              heightFactor: 1 - t,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: ElementScale.spaceM,
                                ),
                                child: Text(
                                  note.description,
                                  textAlign: TextAlign.start,
                                  style: textTheme.labelLarge!.copyWith(
                                    color:
                                        colorScheme.onSurface.withOpacity(0.45),
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
          // MethodExtendedSliverNavigationBar(
          //   heroTag: "task/${task.name}",
          //   border: const Border(),
          //   stretch: true,
          //   largeTitle: Text(
          //     note.name,
          //     textAlign: TextAlign.start,
          //   ),
          //   trailing: IconButton(
          //     icon: const Icon(ElementSymbol.dismiss),
          //     iconSize: 24,
          //     onPressed: () => Navigator.of(context).pop(),
          //   ),
          // ),
          SliverFillRemaining(
            child: Material(
              type: MaterialType.transparency,
              child: SafeArea(
                top: false,
                child: LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    controller: scrollController,
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraint.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                autofocus: true,
                                style: textTheme.bodyLarge,
                                expands: true,
                                maxLines: null,
                                decoration: const InputDecoration(
                                  hintText: 'Start Writing...',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(
                                    ElementScale.spaceM,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
