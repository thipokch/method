import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:method_kit/method_kit.dart';

part 'session_edit_sliver.dart';

class SessionEditView extends StatelessWidget {
  const SessionEditView({super.key});

  @override
  Widget build(BuildContext context) => const _Editor();
}

class _Editor extends StatelessWidget {
  const _Editor();

  @override
  Widget build(BuildContext context) => FutureBuilder<Exercise>(
        future: rootBundle
            .loadString('packages/method_kit/assets/example.json')
            .then((value) {
          return Exercise.fromJson(json.decode(value));
        }),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? MethodKit(
                  exercise: snapshot.data!,
                  onResult: (value) => null,
                )
              : const CupertinoActivityIndicator();
        },
      );
}
