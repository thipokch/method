part of '../entry_preview.dart';

class EntryPreviewLinear extends StatelessWidget with EntryDefinitionConsumer {
  const EntryPreviewLinear({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) => taskDefinitions.first.maybeWhen(
        note: (icon, name, description, hierarchyPath, id, uuid) =>
            MtEditingCard(
          title: name,
          description: description,
          emoji: icon,
        ),
        orElse: (() => throw UnimplementedError()),
      );
}
