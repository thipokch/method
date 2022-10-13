import 'package:go_router/go_router.dart';
import 'package:method/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:method/view/session_list/session_list_view.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/page/page.dart';

import '../exercise_list/exercise_list_view.dart';

final homeDestinations = <GoRoute>[
  $sessionRoute,
  $exerciseRoute,
  $settingsRoute,
];

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({
    super.key,
    required this.child,
  });

  static const destinations = <NavigationDestination>[
    NavigationDestination(
      icon: Icon(ElementSymbol.today),
      selectedIcon: Icon(ElementSymbol.todayFilled),
      label: 'Today',
    ),
    NavigationDestination(
      icon: Icon(ElementSymbol.bookOpen),
      selectedIcon: Icon(ElementSymbol.bookOpenFilled),
      label: 'Create',
    ),
    NavigationDestination(
      icon: Icon(ElementSymbol.person),
      selectedIcon: Icon(ElementSymbol.personFilled),
      label: 'You',
    ),
  ];

  static int _calculateSelectedIndex(context) {
    final String location = GoRouter.of(context).location;

    for (final entry in homeDestinations.asMap().entries) {
      if (location.startsWith(entry.value.path)) return entry.key;
    }

    return 0;
  }

  void _onItemTapped(index, context) =>
      GoRouter.of(context).go(homeDestinations[index].path);

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(splashFactory: NoSplash.splashFactory),
          child: NavigationBar(
            onDestinationSelected: (index) => _onItemTapped(index, context),
            selectedIndex: _calculateSelectedIndex(context),
            destinations: HomePage.destinations,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            // backgroundColor: Colors.transparent,
            // surfaceTintColor: Colors.transparent,
            height: 72,
          ),
        ),
        body: child,
      );
}

class SessionsTab extends StatelessWidget {
  const SessionsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Today",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: SessionListView.create(),
          ),
        ],
      );
}

class ExercisesTab extends StatelessWidget {
  const ExercisesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Journal",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            // child: ExerciseListBloc.provide(
            //   repo: context.read<Repository>(),
            //   child: const ExerciseListView(),
            // ),
            child: ExerciseListView.create(),
          ),
        ],
      );
}
