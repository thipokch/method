import 'package:flutter/cupertino.dart';

class RepoBuilder<T extends Object> extends StatelessWidget {
  final Future<T?> Function(BuildContext _) futureBuilder;
  final Widget onWaiting;
  final Widget Function(T data) onDone;

  const RepoBuilder({
    super.key,
    required this.futureBuilder,
    this.onWaiting = const CupertinoActivityIndicator(),
    required this.onDone,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<T?>(
        future: futureBuilder.call(context),
        builder: (context, snapshot) {
          return snapshot.data != null ? onDone(snapshot.data!) : onWaiting;
        },
      );
}
