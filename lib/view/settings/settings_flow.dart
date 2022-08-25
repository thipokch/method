import 'package:flutter/material.dart';
import 'package:method/view/settings/settings_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// class SettingsFlow extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _SettingsFlowState();
// }

// class _SettingsFlowState extends State<SettingsFlow> {
//   final _navigatorKey = GlobalKey<NavigatorState>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   void _exit() {
//     Navigator.of(context).pop();
//   }

//   @override
//   Widget build(BuildContext context) => Navigator(
//     key: _navigatorKey,
//     initialRoute: ,
//     onGenerateRoute: ,

//   );

//   Route
// }

class SettingsFlow extends StatelessWidget {
  const SettingsFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Navigator(
        initialRoute: 'settings',
        onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
          settings: settings,
          builder: (context) => const SettingsPage(),
        ),
      );
}
