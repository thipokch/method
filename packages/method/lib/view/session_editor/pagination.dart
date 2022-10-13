part of 'session_editor.dart';

class _SessionEditorPagination extends SwiperPlugin {
  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    final colorScheme = Theme.of(context).colorScheme;

    return FloatScaffold(
      leading: AspectRatio(
        aspectRatio: 1,
        child: config.activeIndex == 0
            ? IconButton(
                icon: const Icon(ElementSymbol.dismiss),
                color: colorScheme.primary,
                // ignore: no-empty-block
                onPressed: () {},
                // onPressed: () => focusNavigator.currentState?.pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronBack),
                color: colorScheme.primary,
                onPressed: () => config.controller.previous(),
              ),
      ),
      middle: DotSwiperPaginationBuilder(
        activeColor: colorScheme.primary,
        color: colorScheme.surfaceVariant,
        size: ElementScale.size03 + .0,
        space: ElementScale.size03 + .0,
        activeSize: ElementScale.size03 + .0,
      ).build(context, config),
      trailing: AspectRatio(
        aspectRatio: 1,
        child: config.activeIndex == config.itemCount - 1
            ? IconButton(
                icon: const Icon(ElementSymbol.checkmark),
                color: colorScheme.primary,
                onPressed: () => Navigator.of(context).pop(),
              )
            : IconButton(
                icon: const Icon(ElementSymbol.chevronForward),
                color: colorScheme.primary,
                onPressed: () => config.controller.next(),
              ),
      ),
    );
  }
}
