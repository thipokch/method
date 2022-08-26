// import 'package:flutter/material.dart';
// import 'package:matter/nav/nav_bar.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// class NestedScrollModal extends StatelessWidget {
//   const NestedScrollModal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return HeroControllerScope(
//       controller: MaterialApp.createMaterialHeroController(),
//       child: Navigator(
//         onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
//           builder: (_) =>
//           // CustomScrollView(
//           //   controller: ModalScrollController.of(context),
//           //   slivers: [
//           //     const MethodSliverNavigationBar(
//           //       largeTitle: Text("title"),
//           //       stretch: true,
//           //     ),

//           //   ],
//           // ),

//           //   Column(
//           // mainAxisSize: MainAxisSize.min,
//           // children: [

//           // Container(
//           //   height: 100,
//           //   color: Colors.green,
//           // ),

//           //     NestedScrollView(
//           //   controller: ModalScrollController.of(context),
//           //   // physics: const ScrollPhysics(parent: PageScrollPhysics()),
//           //   headerSliverBuilder:
//           //       (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
//           //     const MethodSliverNavigationBar(
//           //       largeTitle: Text("title"),
//           //       stretch: true,
//           //     ),
//           //   ],
//           //   // body:
//           //   body: ListView.builder(
//           //     shrinkWrap: true,
//           //     // controller: ModalScrollController.of(context),
//           //     itemBuilder: (context, index) {
//           //       return Container(
//           //         height: 10,
//           //         color: index.isOdd ? Colors.green : Colors.orange,
//           //       );
//           //     },
//           //     itemCount: 12,
//           //   ),
//           // ),

//           // ],
//           // ),
//         ),
//       ),
//     );
//   }
// }
