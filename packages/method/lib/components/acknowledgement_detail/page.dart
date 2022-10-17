part of 'component.dart';

class _Page extends StatelessWidget {
  const _Page({
    required this.packageName,
  });

  final String packageName;

  @override
  Widget build(BuildContext context) {
    return MtAppPage(
      name: packageName,
      description: "",
      slivers: [
        SliverToBoxAdapter(
          child: _View(
            packageName: packageName,
          ),
        ),
      ],
    );
  }
}
