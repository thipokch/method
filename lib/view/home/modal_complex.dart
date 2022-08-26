import 'package:flutter/material.dart';
import 'package:matter/nav/nav_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ComplexModal extends StatelessWidget {
  const ComplexModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Navigator(
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (context) => CustomScrollView(
            controller: ModalScrollController.of(context),
            slivers: <Widget>[
              const MethodSliverNavigationBar(
                stretch: true,
                largeTitle: Text("title"),
              ),
              SliverFillRemaining(
                child: SafeArea(
                  bottom: false,
                  child: ListView(
                    shrinkWrap: true,
                    children: List.generate(
                      100,
                      (index) => ListTile(
                        title: const Text('Item'),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const NewWidget(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFillRemaining(
          child: SafeArea(
            bottom: false,
            child: ListView(
              controller: ModalScrollController.of(context),
              shrinkWrap: true,
              children: List.generate(
                100,
                (index) => ListTile(
                  title: const Text('Item'),
                  // ignore: no-empty-block
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => NewWidget(),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
