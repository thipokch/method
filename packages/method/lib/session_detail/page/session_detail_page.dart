import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_edit/route/session_edit_route.dart';
import 'package:method_core/model/session.dart';
import 'package:method_ui/element_scale.dart';
import 'package:method_ui/element_symbol.dart';
import 'package:method_ui/page/page.dart';

import '../session_detail.dart';

class SessionDetailPage extends StatelessWidget {
  const SessionDetailPage({super.key});

  @override
  Widget build(BuildContext context) => MtAppPage(
        // leading: const SizedBox(),
        name: SessionDetailSelector<String?>(
          selector: (state) => state.exercise?.name,
          builder: (context, state) => Text(state ?? "Session Detail"),
        ),
        // description: SessionDetailSelector<DateTime>(
        //   selector: (state) => state.session?.createdAt ?? DateTime.now(),
        //   builder: (context, state) => Timeago(
        //     date: state,
        //     builder: (_, value) => Text(value),
        //   ),
        // ),
        slivers: const [
          SessionDetailSliver(),
        ],
        trailing: SessionDetailSelector<Session?>(
          selector: (state) => state.session,
          builder: (context, session) => session == null
              ? const SizedBox()
              : AspectRatio(
                  aspectRatio: 1,
                  child: PopupMenuButton(
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
                      // PopupMenuItem(
                      //   onTap: () => FlutterPlatformAlert.showCustomAlert(
                      //     windowTitle: "Delete ${session.template.name}?",
                      //     text:
                      //         "Deleting ${session.template.name} will also delete its entries.",
                      //     positiveButtonTitle: "Cancel",
                      //     negativeButtonTitle: "Delete",
                      //   ).then((selection) {
                      //     if (selection == CustomButton.negativeButton) {
                      //       context.read<SessionListBloc>().add(
                      //             SessionListEvent.deleteSession(
                      //               session: session,
                      //             ),
                      //           );

                      //     }
                      //   }),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.max,
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       const Padding(
                      //         padding: EdgeInsets.only(right: 8.0),
                      //         child: Text('Delete'),
                      //       ),
                      //       Icon(
                      //         ElementSymbol.deleteFilled,
                      //         color: Theme.of(context).colorScheme.error,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
        ),
      );
}
