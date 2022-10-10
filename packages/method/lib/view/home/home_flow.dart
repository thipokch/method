import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_style/element_touch.dart';
import 'package:flutter/material.dart';
import 'package:method/view/home/home_page.dart';

import '../../route/routes.dart';

class HomeFlow extends StatelessWidget {
  const HomeFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: HomePage(
          trailing: AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              icon: const Icon(ElementSymbol.settings),
              iconSize: ElementScale.iconM,
              onPressed: () {
                ElementTouch.light();
                const SettingsRoute().push(context);
              },
            ),
          ),
        ),
      );
}
