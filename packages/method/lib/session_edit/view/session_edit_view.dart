import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit/view/entry_edit_view.dart';
import 'package:method/session_edit/logic/logic.dart';
import 'package:method_core/model/task.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/float/float_scaffold.dart';

part 'session_edit_sliver.dart';

class SessionEditView extends StatelessWidget {
  const SessionEditView({super.key});

  @override
  Widget build(BuildContext context) => const _Swiper();
}

class _Swiper extends StatelessWidget {
  const _Swiper();

  @override
  Widget build(BuildContext context) => SessionEditSelector<List<Task>>(
        selector: (state) => state.session?.template.definitions ?? const [],
        builder: (context, state) => Swiper(
          loop: false,
          indicatorLayout: PageIndicatorLayout.WARM,
          itemCount: state.length,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          // pagination: const SwiperPagination(
          //   alignment: Alignment.bottomCenter,
          //   margin: EdgeInsets.all(ElementScale.spaceNone),
          //   builder: _Pagination(),
          // ),
          itemBuilder: (_, index) => BlocProvider(
            create: (context) => EntryEditBloc(
              repository: context.read(),
              taskId: state[index].id,
            ),
            child: const EntryEditView(),
          ),
        ),
      );
}

// ignore: unused_element
class _Pagination extends SwiperPlugin {
  const _Pagination();

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) =>
      FloatScaffold(
        leading: AspectRatio(
          aspectRatio: 1,
          child: config.activeIndex == 0
              ? IconButton(
                  icon: const Icon(ElementSymbol.dismiss),
                  color: Theme.of(context).colorScheme.primary,
                  // ignore: no-empty-block
                  onPressed: () => Navigator.of(context).pop(),
                  // onPressed: () => focusNavigator.currentState?.pop(),
                )
              : IconButton(
                  icon: const Icon(ElementSymbol.chevronBack),
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () => config.controller.previous(),
                ),
        ),
        middle: DotSwiperPaginationBuilder(
          activeColor: Theme.of(context).colorScheme.primary,
          color: Theme.of(context).colorScheme.surfaceVariant,
          size: ElementScale.size03 + .0,
          space: ElementScale.size03 + .0,
          activeSize: ElementScale.size03 + .0,
        ).build(context, config),
        trailing: AspectRatio(
          aspectRatio: 1,
          child: config.activeIndex == config.itemCount - 1
              ? IconButton(
                  icon: const Icon(ElementSymbol.checkmark),
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () => Navigator.of(context).pop(),
                )
              : IconButton(
                  icon: const Icon(ElementSymbol.chevronForward),
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () => config.controller.next(),
                ),
        ),
      );
}
