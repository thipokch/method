part of '../entry_editor.dart';

class EntryEditorLinear extends StatelessWidget with EntryDefinitionConsumer {
  const EntryEditorLinear({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return MtAppPage(
      name: "",
      description: "",
      implyLeading: false,
      // name: task.name,
      // description: task.description,
      slivers: [
        SliverFillRemaining(
          child: TextField(
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
    );
  }
}
