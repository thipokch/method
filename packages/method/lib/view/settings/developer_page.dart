import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';
import 'package:method_ui/preview.dart';

class DeveloperPage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const DeveloperPage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtPage(
        name: "Developer",
        leading: leading,
        trailing: trailing,
        slivers: const [
          SliverToBoxAdapter(
            child: _DeveloperList(),
          ),
        ],
      );
}

class _DeveloperList extends StatelessWidget {
  const _DeveloperList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      ListTile(
        title: const Text("Matter UI"),
        trailing: const Icon(ElementSymbol.chevronForward),
        onTap: () => showMatterPreview(context: context),
      ),
      // ListTile(
      //   title: const Text("Task Component"),
      //   trailing: const Icon(ElementSymbol.chevronForward),
      //   onTap: () => Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (BuildContext context) => const TaskEditor(),
      //     ),
      //   ),
      // ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: items,
    );

    // return ListView.separated(
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
    //   separatorBuilder: (context, index) => const Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 12),
    //     child: Divider(
    //       height: 0,
    //     ),
    //   ),
    //   itemCount: items.length,
    //   itemBuilder: (context, index) => items[index],
    // );
  }
}
