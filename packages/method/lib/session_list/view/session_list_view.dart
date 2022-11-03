import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
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
          // started: (_) => _Started(sessions: _.sessions),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

// class _Started extends StatelessWidget {
//   const _Started({
//     required this.sessions,
//   });

//   final List<Session> sessions;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: sessions
//           .map<Widget>((session) => _Item(
//                 key: ValueKey(session.id),
//                 session: session,
//                 onTap: () => context
//                     .read<SessionListBloc>()
//                     .add(SessionListEvent.selectSession(session: session)),
//                 actions: PopupMenuButton(
//                   icon: const Icon(ElementSymbol.moreVertical),
//                   position: PopupMenuPosition.under,
//                   shape: const SmoothRectangleBorder(
//                     borderRadius: SmoothBorderRadius.all(
//                       SmoothRadius(
//                         cornerRadius: ElementScale.cornerLarge,
//                         cornerSmoothing: ElementScale.cornerSmoothFactor,
//                       ),
//                     ),
//                   ),
//                   itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//                     PopupMenuItem(
//                       onTap: () => SessionEditRoute(session.id).push(context),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(right: 8.0),
//                             child: Text('Edit'),
//                           ),
//                           Icon(
//                             ElementSymbol.editFilled,
//                             color: colorScheme.onBackground,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const PopupMenuDivider(),
//                     PopupMenuItem(
//                       onTap: () => FlutterPlatformAlert.showCustomAlert(
//                         windowTitle: "Delete ${session.template.name}?",
//                         text:
//                             "Deleting ${session.template.name} will also delete its entries.",
//                         positiveButtonTitle: "Cancel",
//                         negativeButtonTitle: "Delete",
//                       ).then((selection) {
//                         if (selection == CustomButton.negativeButton) {
//                           context.read<SessionListBloc>().add(
//                                 SessionListEvent.deleteSession(
//                                   session: session,
//                                 ),
//                               );
//                         }
//                       }),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(right: 8.0),
//                             child: Text('Delete'),
//                           ),
//                           Icon(
//                             ElementSymbol.deleteFilled,
//                             color: colorScheme.error,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ))
//           .toList(),
//     );
//   }
// }

class _Item extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;
  final List<CupertinoContextMenuAction> actions;

  const _Item({
    super.key,
    required this.session,
    required this.actions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final labels = session.labels;
    final notes = session.notes;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return CupertinoContextMenu(
      actions: actions,
      // previewBuilder: (context, animation, child) => Text("data"),
      child: GestureDetector(
        onTap: onTap,
        child: SingleChildScrollView(
          // clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              notes.isNotEmpty
                  ? MtCard(
                      isExpandable: true,
                      body: const SizedBox.shrink(),
                      header: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              notes.first.data,
                              style: textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      // footer:
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 6.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 28,
                        child: labels.isNotEmpty
                            ? WidgetStack(
                                positions: RestrictedAmountPositions(
                                  minCoverage: .3,
                                  infoIndent: 2,
                                  align: StackAlign.left,
                                ),
                                stackedWidgets: labels
                                    .map(
                                      (def) => BorderedCircleAvatar(
                                        border: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                          width: ElementScale.strokeL,
                                        ),
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .surfaceVariant,
                                        child: SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: MtEmoji(emoji: def.icon),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                buildInfoWidget: (surplus) =>
                                    BorderedCircleAvatar(
                                  border: BorderSide(
                                    color: colorScheme.background,
                                    width: ElementScale.strokeL,
                                  ),
                                  backgroundColor: colorScheme.primary,
                                  child: SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: Center(
                                      child: Text(
                                        '+$surplus',
                                        style: textTheme.labelSmall?.copyWith(
                                          color: colorScheme.onPrimary,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "${DateFormat.j().format(session.createdAt)} · ${session.template.name.toUpperCase()}",
                        style: textTheme.labelSmall!.copyWith(
                          color: colorScheme.outline,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
