import 'package:component/task/task_bloc.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/nav/nav_bar.dart';

class TaskEditor extends StatefulWidget {
  const TaskEditor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TaskEditorState();
}

class TaskEditorState extends State<TaskEditor> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(onTextEditEvent);
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  // ignore: no-empty-block
  void onTextEditEvent() {}

  @override
  Widget build(BuildContext context) {
    final note = context.read<TaskBloc>().task.definitions.first;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(color: colorScheme.background),
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          MethodExtendedSliverNavigationBar(
            border: const Border(),
            stretch: true,
            largeTitle: Text(
              note.name,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: const Icon(ElementSymbol.dismiss),
              iconSize: 24,
              onPressed: () => Navigator.of(context).pop(),
            ),
            // middle: Text(note.name),
          ),
          SliverToBoxAdapter(
            child: Material(
              type: MaterialType.transparency,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: ElementScale.iconL,
                      vertical: ElementScale.iconS,
                    ),
                    child: Text(
                      note.description,
                      textAlign: TextAlign.center,
                      style: textTheme.labelLarge!.copyWith(
                        color: colorScheme.onSurface.withOpacity(0.45),
                      ),
                    ),
                  ),
                  TextField(
                    style: textTheme.bodyLarge,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: ' Start Writing...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(
                        ElementScale.spaceL,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
