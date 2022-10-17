// // part of 'component.dart';

// import 'package:method_bloc/entry/entry_bloc.dart';
// import 'package:method_core/model/entry_definition.dart';
// import 'package:flutter/material.dart';
// import 'package:method_style/element_scale.dart';
// import 'package:method_ui/page/page.dart';
// import 'package:provider/provider.dart';

// import '../definition_card/legacy.dart';
// import '../entry_edit/view.dart';

// class EntryDivergeEditView extends StatelessWidget
//     with EntryDefinitionConsumer {
//   const EntryDivergeEditView({
//     super.key,
//     required this.bloc,
//   });

//   @override
//   final EntryBloc bloc;

//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<EntryBloc>();
//     final task = bloc.state.task;

//     return MtAppPage(
//       // name: "",
//       // description: "",
//       name: task.name,
//       description: task.description,
//       implyLeading: false,
//       slivers: [
//         SliverSafeArea(
//           top: false,
//           sliver: SliverPadding(
//             padding: const EdgeInsets.all(ElementScale.spaceM),
//             sliver: SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 childCount: taskDefinitions.length,
//                 (context, index) {
//                   final taskDefinition = taskDefinitions[index];
//                   final entryDefinition =
//                       entryDefinitions?.elementAtOrNull(index);

//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: DefinitionCardView(
//                       // key: ValueKey(entryDefinition?.id ?? taskDefinition.uuid),
//                       bloc: bloc,
//                       taskDefinition: taskDefinition,
//                       entryDefinition: entryDefinition,
//                       onTap: () => bloc
//                         ..add(EntryEvent.updateData(
//                           definition: EntryDefinition.note(
//                             data: "",
//                             hierarchyPath: taskDefinition.hierarchyPath,
//                             id: taskDefinition.id,
//                           ),
//                         )),
//                       onChanged: (value) => bloc
//                         ..add(EntryEvent.updateData(
//                           definition: EntryDefinition.note(
//                             data: value,
//                             hierarchyPath: taskDefinition.hierarchyPath,
//                             id: taskDefinition.id,
//                           ),
//                         )),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
