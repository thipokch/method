import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/method_style.dart';

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
              height: 64,
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
      icon: Icon(MtSymbols.list),
      selectedIcon: Icon(MtSymbols.listFilled),
      label: 'Timeline',
    ),
    NavigationDestination(
      icon: Icon(MtSymbols.add),
      selectedIcon: Icon(MtSymbols.addFilled),
      label: 'Library',
    ),
    NavigationDestination(
      icon: Icon(MtSymbols.person),
      selectedIcon: Icon(MtSymbols.personFilled),
      label: 'You',
    ),
  ];
}
