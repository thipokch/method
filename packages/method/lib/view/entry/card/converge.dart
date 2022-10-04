part of '../entry_card.dart';

class EntryCardConverge extends StatelessWidget with EntryDefinitionConsumer {
  const EntryCardConverge({
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
