import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/element_symbol.dart';

import '../home.dart';

part 'home_sliver.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(splashFactory: NoSplash.splashFactory),
          child: HomeBuilder(
            builder: (context, state) => NavigationBar(
              onDestinationSelected: (index) =>
                  context.read<HomeBloc>().selectIndex(index),
              selectedIndex: state,
              destinations: _ListItems.destinations,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              // backgroundColor: Colors.transparent,
              // surfaceTintColor: Colors.transparent,
              height: 72,
            ),
          ),
        ),
        body: child,
      );
}

class _ListItems {
  const _ListItems._();

  static const destinations = <NavigationDestination>[
    NavigationDestination(
      icon: Icon(ElementSymbol.today),
      selectedIcon: Icon(ElementSymbol.todayFilled),
      label: 'Timeline',
    ),
    NavigationDestination(
      icon: Icon(ElementSymbol.bookOpen),
      selectedIcon: Icon(ElementSymbol.bookOpenFilled),
      label: 'Library',
    ),
    NavigationDestination(
      icon: Icon(ElementSymbol.person),
      selectedIcon: Icon(ElementSymbol.personFilled),
      label: 'You',
    ),
  ];
}
