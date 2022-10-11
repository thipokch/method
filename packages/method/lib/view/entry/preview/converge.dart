part of '../entry_preview.dart';

class EntryPreviewConverge extends StatelessWidget
    with EntryDefinitionConsumer {
  const EntryPreviewConverge({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) =>
      entryDefinitions?.first?.maybeWhen(
        note: ((data, hierarchyPath, id, uuid) => MtCard(text: data)),
        orElse: (() => throw UnimplementedError()),
      ) ??
      const CupertinoActivityIndicator();
}
