import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:grouped_list/sliver_grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_edit/route/session_edit_route.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/card/card.dart';
import 'package:method_ui/emoji/emoji.dart';

import '../logic/session_list_bloc.dart';

part 'session_list_sliver.dart';

class SessionListView extends StatelessWidget {
  const SessionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SessionListBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => _Started(sessions: _.sessions),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _Started extends StatelessWidget {
  const _Started({
    required this.sessions,
  });

  final List<Session> sessions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: sessions
          .map<Widget>((session) => _Item(
                key: ValueKey(session.id),
                session: session,
                onTap: () => context
                    .read<SessionListBloc>()
                    .add(SessionListEvent.selectSession(session: session)),
                // onTap: () => SessionDetailRoute(session.id).push(context),
                actions: PopupMenuButton(
                  icon: const Icon(ElementSymbol.moreVertical),
                  position: PopupMenuPosition.under,
                  shape: const SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius.all(
                      SmoothRadius(
                        cornerRadius: ElementScale.cornerLarge,
                        cornerSmoothing: ElementScale.cornerSmoothFactor,
                      ),
                    ),
                  ),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      // onTap: () {},
                      onTap: () => SessionEditRoute(session.id).push(context),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text('Edit'),
                          ),
                          Icon(
                            ElementSymbol.editFilled,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuDivider(),
                    PopupMenuItem(
                      onTap: () => FlutterPlatformAlert.showCustomAlert(
                        windowTitle: "Delete ${session.template.name}?",
                        text:
                            "Deleting ${session.template.name} will also delete its entries.",
                        positiveButtonTitle: "Cancel",
                        negativeButtonTitle: "Delete",
                      ).then((selection) {
                        if (selection == CustomButton.negativeButton) {
                          context.read<SessionListBloc>().add(
                                SessionListEvent.deleteSession(
                                  session: session,
                                ),
                              );
                        }
                      }),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text('Delete'),
                          ),
                          Icon(
                            ElementSymbol.deleteFilled,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}

class _Item extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;
  final Widget? actions;

  const _Item({
    super.key,
    required this.session,
    this.actions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;
    // final entryIndex = session.definitions.indexWhere(
    //   (entry) =>
    //       entry.template.maybeMap(
    //         feedback: (_) => false,
    //         orElse: () => true,
    //       ) ??
    //       false,
    // );

    // final defIndex = entryIndex < 0
    //     ? -1
    //     : session.definitions[entryIndex].definitions.indexWhere(
    //         (def) =>
    //             def.maybeMap(
    //               note: (_) => true,
    //               orElse: () => false,
    //             ) ??
    //             false,
    //       );

    final labels = session.labels;
    final notes = session.notes;

    return GestureDetector(
      onTap: onTap,
      child: Wrap(
        children: [
          if (notes.isNotEmpty) MtCard(body: Text(notes.first.data)),

          ListTile(
            title: labels.isNotEmpty
                ? SizedBox(
                    height: 32,
                    child: WidgetStack(
                      positions: RestrictedAmountPositions(
                        minCoverage: .3,
                        infoIndent: 2,
                        align: StackAlign.left,
                      ),
                      stackedWidgets: labels
                          .map(
                            (def) => BorderedCircleAvatar(
                              border: BorderSide(
                                color: Theme.of(context).colorScheme.background,
                                width: ElementScale.strokeL,
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: SizedBox(
                                width: 16,
                                height: 16,
                                child: MtEmoji(emoji: def.icon),
                              ),
                            ),
                          )
                          .toList(),
                      buildInfoWidget: (surplus) => BorderedCircleAvatar(
                        border: BorderSide(
                          color: Theme.of(context).colorScheme.background,
                          width: ElementScale.strokeL,
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        child: SizedBox(
                          width: 18,
                          height: 18,
                          child: Center(
                            child: Text(
                              '+$surplus',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
            // leading: CircleAvatar(
            //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            //   child: SizedBox(
            //     width: 28,
            //     height: 28,
            //     child: MtEmoji(emoji: session.template.icon),
            //   ),
            // ),
            // title:
            // Text(DateFormat.jm().format(session.createdAt).toLowerCase()),
            // subtitle: Timeago(
            //   builder: (_, value) => Text(value),
            //   date: session.createdAt,
            // ),
            // subtitle: Text(format(session.commitedAt!)),
            trailing: actions,
            // trailing:
            //     Text(DateFormat.jm().format(session.createdAt).toLowerCase()),
          ),

          // if (labels.isNotEmpty)

          // if (entryIndex >= 0 && defIndex >= 0)
          //   Padding(
          //     padding: const EdgeInsets.symmetric(
          //       vertical: 128.0,
          //       horizontal: 8.0,
          //     ),
          //     child: Center(
          //       child: Text(
          //         session.definitions[entryIndex].definitions[defIndex]
          //             .maybeMap(
          //           note: (value) => value.data,
          //           orElse: () => throw UnimplementedError(),
          //         ),
          //         style: textTheme.titleMedium,
          //       ),
          //     ),
          //   ),
          // if (entryIndex >= 0)
          //   Wrap(
          //     spacing: 10,
          //     alignment: WrapAlignment.start,
          //     children: session.labels
          //         .map<Widget>((e) => Chip(
          //               label: Text(e.name),
          //               labelStyle: textTheme.labelMedium,
          //               avatar: MtEmoji(emoji: e.icon),
          //               padding: const EdgeInsets.fromLTRB(10, 6, 5, 6),
          //               backgroundColor: colorScheme.surface,
          //               shape: const SmoothRectangleBorder(
          //                 borderRadius: SmoothBorderRadius.all(
          //                   SmoothRadius(
          //                     cornerRadius: ElementScale.cornerLarge,
          //                     cornerSmoothing:
          //                         ElementScale.cornerSmoothFactor,
          //                   ),
          //                 ),
          //               ),
          //             ))
          //         .toList(),
          //   ),
          const Divider(),
        ],
      ),
    );
  }
}
