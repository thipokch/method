import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_edit/route/session_edit_route.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/emoji/emoji.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

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
          .map<Widget>((session) => _Card(
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

class _Card extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;
  final Widget? actions;

  const _Card({
    super.key,
    required this.session,
    this.actions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final entryIndex = session.definitions.indexWhere(
      (entry) =>
          entry.template.maybeMap(
            feedback: (_) => false,
            orElse: () => true,
          ) ??
          false,
    );

    final defIndex = entryIndex < 0
        ? -1
        : session.definitions[entryIndex].definitions.indexWhere(
            (def) =>
                def.maybeMap(
                  note: (_) => true,
                  orElse: () => false,
                ) ??
                false,
          );

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius.all(
            SmoothRadius(
              cornerRadius: ElementScale.cornerLarge,
              cornerSmoothing: ElementScale.cornerSmoothFactor,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              ListTile(
                leading: MtEmoji(emoji: session.template.icon),
                title: Text(session.template.name),
                subtitle: Timeago(
                  builder: (_, value) => Text(value),
                  date: session.createdAt,
                ),
                // subtitle: Text(format(session.commitedAt!)),
                trailing: actions,
              ),
              if (entryIndex >= 0 && defIndex >= 0)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 128.0,
                    horizontal: 8.0,
                  ),
                  child: Center(
                    child: Text(
                      session.definitions[entryIndex].definitions[defIndex]
                          .maybeMap(
                        note: (value) => value.data,
                        orElse: () => throw UnimplementedError(),
                      ),
                      style: textTheme.titleMedium,
                    ),
                  ),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
