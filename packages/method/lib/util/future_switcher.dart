import 'package:flutter/widgets.dart';

class FutureSwitcher<T extends Object> extends StatelessWidget {
  final Future<T?> future;
  final Widget onWait;
  final Widget Function(T data) onData;
  final Widget Function(Object error) onError;

  const FutureSwitcher({
    super.key,
    required this.future,
    required this.onWait,
    required this.onData,
    required this.onError,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<T?>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) return onData(snapshot.data!);
          if (snapshot.hasError) return onError(snapshot.error!);

          return onWait;
        },
      );
}
