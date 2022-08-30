import 'package:element/element_symbol.dart';
import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';
import 'package:method/view/home/home_page.dart';

import '../../route/routes.dart';

class HomeFlow extends StatelessWidget {
  const HomeFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: HomePage(
          leading: IconButton(
            icon: const Icon(ElementSymbol.settingsFilled),
            iconSize: 24,
            onPressed: () {
              ElementTouch.light();
              const SettingsRoute().push(context);
            },
          ),
          trailing: IconButton(
            icon: const Icon(ElementSymbol.searchFilled),
            iconSize: 24,
            onPressed: () {
              ElementTouch.light();
              const SettingsRoute().push(context);
            },
          ),
        ),
      );
}
