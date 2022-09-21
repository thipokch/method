part of '../entry_editor.dart';

class EntryEditorLinear extends StatelessWidget {
  const EntryEditorLinear({
    Key? key,
    required this.textTheme,
    required this.colorScheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EntryBloc>();
    final task = bloc.state.task;

    return EntryEditorScaffold(
      title: task.name,
      description: task.description,
      slivers: [
        SliverFillRemaining(
          child: TextField(
            //                 autofocus: false,
            style: textTheme.bodyLarge,
            expands: true,
            maxLines: null,
            cursorColor: colorScheme.primary,
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
      // LayoutBuilder(
      //   builder: (context, constraint) => SingleChildScrollView(
      //     child: ConstrainedBox(
      //       constraints: BoxConstraints(minHeight: constraint.maxHeight),
      //       child: IntrinsicHeight(
      //         child: Column(
      //           children: <Widget>[
      //             Expanded(
      //               child: TextField(
      //                 autofocus: false,
      //                 style: textTheme.bodyLarge,
      //                 expands: true,
      //                 maxLines: null,
      //                 cursorColor: colorScheme.primary,
      //                 decoration: const InputDecoration(
      //                   hintText: 'Start Writing...',
      //                   border: InputBorder.none,
      //                   contentPadding: EdgeInsets.all(
      //                     ElementScale.spaceM,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
