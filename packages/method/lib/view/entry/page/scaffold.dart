part of '../entry_editor.dart';

class EntryEditorScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final String title;
  final String description;

  const EntryEditorScaffold({
    super.key,
    required this.title,
    required this.description,
    required this.slivers,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      child: Container(
        decoration: BoxDecoration(color: colorScheme.background),
        child: CustomScrollView(
          slivers: [
            MtSliverAppBar(
              name: title,
              description: description,
            ),
            ...slivers,
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
