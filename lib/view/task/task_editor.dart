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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
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
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          MethodExtendedSliverNavigationBar(
            border: const Border(),
            stretch: true,
            largeTitle: Text(
              note.name,
              textAlign: TextAlign.start,
            ),
            trailing: IconButton(
              icon: const Icon(ElementSymbol.dismiss),
              iconSize: 24,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
        body: Material(
          type: MaterialType.transparency,
          child: SafeArea(
            top: false,
            child: LayoutBuilder(
              builder: (context, constraint) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: ElementScale.spaceM,
                            vertical: ElementScale.spaceM,
                          ),
                          child: Text(
                            note.description,
                            textAlign: TextAlign.start,
                            style: textTheme.labelLarge!.copyWith(
                              color: colorScheme.onSurface.withOpacity(0.45),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: textTheme.bodyLarge,
                            expands: true,
                            maxLines: null,
                            decoration: const InputDecoration(
                              hintText: ' Start Writing...',
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
    );
  }
}
