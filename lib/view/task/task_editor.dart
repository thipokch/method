import 'package:flutter/material.dart';

class TaskEditorRoute extends PopupRoute {
  final WidgetBuilder builder;

  // final Task task;

  TaskEditorRoute({
    required this.builder,
    // required this.task,
    RouteSettings? settings,
  }) : super(settings: settings);

  @override
  Color get barrierColor => Colors.black54.withAlpha(100);
  @override
  bool get barrierDismissible => true;
  @override
  String get barrierLabel => 'customPopupRoute';
  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) =>
      // TaskEditor(task: task);
      builder(context);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: animation,
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}

// class TaskEditor extends StatefulWidget {
//   const TaskEditor({
//     Key? key,
//     required this.task,
//   }) : super(key: key);

//   final Task task;

//   @override
//   State<StatefulWidget> createState() => TaskEditorState();
// }

// class TaskEditorState extends State<TaskEditor> {
//   @override
//   Widget build(BuildContext context) => Focus(
//         onFocusChange: (hasFocus) {
//           if (hasFocus) {
//             print("onFocusChange");
//           }
//         },
//         child: Column(
//           children: [
//             TaskView(
//               bloc: widget.bloc,
//             ),
//           ],
//         ),
//       );
// }
