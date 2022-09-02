// import 'package:component/task/task_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:matter/card/card.dart';

// class TaskCard extends StatelessWidget {
//   const TaskCard({
//     Key? key,
//     this.onTap,
//     this.controller,
//   }) : super(key: key);

//   final VoidCallback? onTap;
//   final TextEditingController? controller;

//   @override
//   Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
//         builder: (context, state) => Hero(
//           tag: state.when(
//             initial: () => "task/blank",
//             taskLoaded: (task) => "task/${task.id}",
//             entryLoaded: (task, entry) => "task/${task.id}",
//           ),
//           child: MethodCard(
//             autofocus: true,
//             controller: controller,
//             onTap: onTap,
//             title: state.maybeWhen(
//               initial: () => "Loading",
//               taskLoaded: (task) => task.name,
//               entryLoaded: (task, entry) => task.name,
//               orElse: () => "Error",
//             ),
//             description: state.when(
//               initial: () => "Loading",
//               taskLoaded: (task) => task.description,
//               entryLoaded: (task, entry) => task.description,
//             ),
//             emoji: state.when(
//               initial: () => "⏳",
//               taskLoaded: (task) => task.icon,
//               entryLoaded: (task, entry) => task.icon,
//             ),
//             isExpanded: state.when(
//               initial: () => false,
//               taskLoaded: (task) => false,
//               entryLoaded: (task, entry) => true,
//             ),
//             onChanged: (value) => context.read<TaskBloc>().add(
//                   TaskEvent.addData(text: value),
//                 ),
//           ),
//         ),
//       );
// }
