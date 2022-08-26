import 'package:flutter/material.dart';
import 'package:matter/nav/nav_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) => MaterialWithModalsPageRoute(
        builder: (_) => Material(
          child: CustomScrollView(
            controller: ModalScrollController.of(context),
            slivers: <Widget>[
              const MethodSliverNavigationBar(
                stretch: true,
                largeTitle: Text("title"),
              ),
              // builder(context),
              SliverFillRemaining(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: const Text('Edit'),
                      leading: const Icon(Icons.edit),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    ListTile(
                      title: const Text('Copy'),
                      leading: const Icon(Icons.content_copy),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    ListTile(
                      title: const Text('Cut'),
                      leading: const Icon(Icons.content_cut),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    ListTile(
                      title: const Text('Move'),
                      leading: const Icon(Icons.folder_open),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    ListTile(
                      title: const Text('Delete'),
                      leading: const Icon(Icons.delete),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // NestedScrollView(
          //   body: ListView(
          //     controller: ModalScrollController.of(context),
          //     children: <Widget>[
          //       ListTile(
          //         title: const Text('Edit'),
          //         leading: const Icon(Icons.edit),
          //         onTap: () => Navigator.of(context).pop(),
          //       ),
          //       ListTile(
          //         title: const Text('Copy'),
          //         leading: const Icon(Icons.content_copy),
          //         onTap: () => Navigator.of(context).pop(),
          //       ),
          //       ListTile(
          //         title: const Text('Cut'),
          //         leading: const Icon(Icons.content_cut),
          //         onTap: () => Navigator.of(context).pop(),
          //       ),
          //       ListTile(
          //         title: const Text('Move'),
          //         leading: const Icon(Icons.folder_open),
          //         onTap: () => Navigator.of(context).pop(),
          //       ),
          //       ListTile(
          //         title: const Text('Delete'),
          //         leading: const Icon(Icons.delete),
          //         onTap: () => Navigator.of(context).pop(),
          //       ),
          //     ],
          //   ),
          //   headerSliverBuilder:
          //       (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
          //     const MethodSliverNavigationBar(
          //       stretch: true,
          //       largeTitle: Text("title"),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
