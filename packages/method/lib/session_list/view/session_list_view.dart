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
import 'package:method_ui/button/button_filled.dart';
import 'package:method_ui/context_menu/context_menu.dart';
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
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

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

    return MtCupertinoContextMenu(
      actions: actions,
      onTap: onTap,
      child: SingleChildScrollView(
        // clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            notes.isNotEmpty
                ? Row(
                    children: [
                      Expanded(
                        child: Card(
                          // isExpandable: true,
                          // isSelected: true,
                          // body: const SizedBox.shrink(),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              notes.first.data,
                              style: textTheme.bodyMedium,
                              // softWrap: true,
                              // maxLines: 10,
                            ),
                          ),
                          // footer:
                        ),
                      ),
                    ],
                  )
                : const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Row(
                children: [
                  Text(
                    "${DateFormat.j().format(session.createdAt)} · ${session.template.name.toUpperCase()}",
                    style: textTheme.labelMedium!.copyWith(
                      color: colorScheme.outline,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 24,
                      child: labels.isNotEmpty
                          ? WidgetStack(
                              positions: RestrictedAmountPositions(
                                minCoverage: .3,
                                infoIndent: 2,
                                align: StackAlign.right,
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
                                        width: 12,
                                        height: 12,
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
                                        fontSize: 9,
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
                ],
              ),
            ),
            // if (notes.isEmpty) const Divider(),
            const SizedBox(height: 16),
            // const Divider(),
          ],
        ),
      ),
    );
  }
}
