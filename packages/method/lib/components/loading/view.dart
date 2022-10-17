import 'package:flutter/cupertino.dart';

class LoadingSliver extends StatelessWidget {
  const LoadingSliver({super.key});

  @override
  Widget build(BuildContext context) => const SliverFillRemaining(
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      );
}
