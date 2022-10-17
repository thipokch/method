import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/float/float_scaffold.dart';
import 'package:provider/provider.dart';

import '../entry_edit/component.dart';

class SessionEditView extends StatelessWidget {
  final Session session;

  const SessionEditView({
    super.key,
    required this.session,
  });

  @override
  Widget build(BuildContext context) => Swiper(
        loop: false,
        indicatorLayout: PageIndicatorLayout.WARM,
        itemCount: session.template.definitions.length,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.all(ElementScale.spaceNone),
          builder: _SessionEditorPagination(),
        ),
        itemBuilder: (_, index) => EntryEdit.create(
          listener: context.read<SessionBloc>().handleEntryBlocState,
          task: session.template.definitions[index],
          entry: index < session.definitions.length
              ? session.definitions[index]
              : null,
        ),
      );
}

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
                onPressed: () => Navigator.of(context).pop(),
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
