import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:method/components/session_card/view.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/session_list/session_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';

import '../session_detail/route.dart';
import '../session_edit/route.dart';

class SessionListView extends StatelessWidget {
  final List<Session> sessions;

  const SessionListView({
    super.key,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: sessions
          .map((session) => SessionCardView(
                session: session,
                onTap: () => SessionDetailRoute(session.id).push(context),
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
                            color: colorScheme.onBackground,
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
                                SessionListEvent.delete(session: session),
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
                            color: colorScheme.error,
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
