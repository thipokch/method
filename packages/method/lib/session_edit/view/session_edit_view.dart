import 'package:built_collection/built_collection.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/logic/entry_edit_bloc.dart';
import 'package:method/entry_edit/view/entry_edit_view.dart';
import 'package:method/session_edit/logic/logic.dart';
import 'package:method_core/abstract/present.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_color.dart';
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
  Widget build(BuildContext context) => SessionEditSelector<Presentation?>(
        selector: (state) => state.exercise?.presentation,
        builder: (context, state) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: state
                ?.colorScheme(Theme.of(context).brightness)
                .harmonizeWith(Theme.of(context).colorScheme.primary),
          ),
          child: SessionEditSelector<SessionDefinitionList?>(
            selector: (state) =>
                state.session?.builtDefinition.map.entries.toBuiltList(),
            builder: (context, state) => state == null
                ? const CupertinoActivityIndicator()
                : Swiper(
                    loop: false,
                    indicatorLayout: PageIndicatorLayout.WARM,
                    itemCount: state.length,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(ElementScale.spaceNone),
                      builder: _Pagination(),
                    ),

                    // itemBuilder: (context, index) => Text(index.toString()),
                    itemBuilder: (_, index) => BlocProvider(
                      create: (context) => EntryEditBloc(
                        repository: context.read(),
                      )..add(state[index].value.isPresent
                          ? EntryEditEvent.startEntry(
                              entryId: state[index].value.value.id,
                            )
                          : EntryEditEvent.startTask(
                              taskId: state[index].key.id,
                            )),
                      child: EntryEditListener(
                        listenWhen: (previous, current) =>
                            previous.entry != null && // Skip initial state
                            previous.entry?.builtDefinition !=
                                current.entry?.builtDefinition,
                        listener: (context, state) => state.mapOrNull(
                          started: (value) =>
                              context.read<SessionEditBloc>().add(
                                    SessionEditEvent.updateEntry(
                                      entry: value.entry,
                                    ),
                                  ),
                        ),
                        // child:
                        //     const MtAppPage(name: Text("data"), slivers: const []),
                        child: const EntryEditView(),
                      ),
                    ),
                  ),
          ),
        ),
      );
}

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
