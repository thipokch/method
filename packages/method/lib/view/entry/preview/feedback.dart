part of '../entry_preview.dart';

class EntryPreviewFeedback extends StatelessWidget
    with EntryDefinitionConsumer {
  const EntryPreviewFeedback({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) => Container();
}
