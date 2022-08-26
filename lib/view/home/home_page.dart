import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/home/modal_fit.dart';
import 'package:method/view/settings/settings_flow.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends MethodPage {
  const HomePage({
    Key? key,
    super.title = "Home",
  }) : super(key: key);

  @override
  MethodPageBuilder get builder => ((context) => _HomeView());
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          ButtonTonal(
            child: const Text("Settings"),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: false,
              context: context,
              builder: (context) {
                ElementTouch.light();

                return const SettingsFlow();
              },
              duration: const Duration(milliseconds: 300),
            ),
          ),
          // ButtonTonal(
          //   child: const Text("Modal"),
          //   onPressed: () => showCupertinoModalBottomSheet(
          //     expand: false,
          //     context: context,
          //     builder: (context) {
          //       ElementTouch.light();

          //       return const NestedScrollModal();
          //     },
          //     duration: const Duration(milliseconds: 300),
          //   ),
          // ),
          ButtonTonal(
            child: const Text("Modal Fit"),
            onPressed: () => showCupertinoModalBottomSheet(
              expand: false,
              context: context,
              builder: (context) {
                ElementTouch.light();

                return const ModalFit();
              },
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ],
      );
}
