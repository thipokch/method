import 'package:component/task/task_bloc.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
  }

  @override
  void dispose() {
    controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.dispose();
  }

  // ignore: no-empty-block
  void onTextEditEvent() {}

  @override
  Widget build(BuildContext context) {
    final note = context.read<TaskBloc>().task.definitions.first;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(ElementScale.spaceM),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DotsIndicator(
                      dotsCount: 3,
                      position: 0,
                      decorator: DotsDecorator(
                        size: const Size.square(5),
                        activeSize: const Size.square(5),
                        activeColor: colorScheme.onSurfaceVariant,
                        color: colorScheme.onSurfaceVariant.withOpacity(0.25),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(ElementSymbol.dismiss),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: ElementScale.spaceXL,
                    bottom: ElementScale.spaceM,
                  ),
                  child: Text(
                    note.name,
                    style: textTheme.headlineSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: ElementScale.spaceM,
                    top: ElementScale.spaceS,
                  ),
                  child: Text(
                    note.description,
                    style: textTheme.labelLarge!.copyWith(
                      color: colorScheme.onSurface.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              child: TextField(
                style: textTheme.bodyLarge,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: ' Start Writing...',
                  border: InputBorder.none,
                  // contentPadding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 16.0,
                  //   right: 16.0,
                  //   bottom: 16.0,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // WillPopScope(
  //       onWillPop: (() async {
  //         context.read<TaskBloc>().add(const TaskEvent.closeTask());

  //         return true;
  //       }),
  //       child: Container(
  //         padding: const EdgeInsets.all(ElementScale.spaceM),
  //         // decoration:
  //         //     BoxDecoration(color: Theme.of(context).colorScheme.background),
  //         child: Column(
  //           children: const [
  //             TaskCard(),
  //           ],
  //         ),
  //       ),
  //     );

}
